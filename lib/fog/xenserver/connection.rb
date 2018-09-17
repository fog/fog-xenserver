require 'xmlrpc/client'

module Fog
  module XenServer
    class Connection
      attr_reader :credentials

      def initialize(host, port, use_ssl, verify_mode, timeout)
        @factory = XMLRPC::Client.new3(host: host, port: port, use_ssl: use_ssl, path: "/")
        if @factory.respond_to?(:http)
          @factory.http.verify_mode = verify_mode
        else
          @factory.instance_variable_get(:@http).verify_mode = verify_mode
        end
        @factory.set_parser(NokogiriStreamParser.new)
        @factory.timeout = timeout
      end

      def slave?
        master_slave_request
        @ms_response["Status"] == "Failure"
      end

      def master
        master_slave_request
        return if @ms_response["ErrorDescription"].nil?
        return unless @ms_response["ErrorDescription"][0] == "HOST_IS_SLAVE"
        @ms_response["ErrorDescription"][1]
      end

      def authenticate( username, password )
        response = @factory.call("session.login_with_password", username.to_s, password.to_s)
        raise Fog::XenServer::InvalidLogin.new unless response["Status"] =~ /Success/
        @credentials = response["Value"]
      end

      def request(options, *params)
        begin
          parser   = options.delete(:parser)
          method   = options.delete(:method)

          if params.empty?
            response = @factory.call(method, @credentials)
          else
            if params.length.eql?(1) and params.first.is_a?(Hash)
              response = @factory.call(method, @credentials, params.first)
            elsif params.length.eql?(2) and params.last.is_a?(Array)
              response = @factory.call(method, @credentials, params.first, params.last)
            elsif params.length.eql?(1) and params.last.is_a?(Array)
              response = @factory.call(method, @credentials, params.first)
            else
              response = eval("@factory.call('#{method}', '#{@credentials}', #{params.map {|p|  p.is_a?(String) ? "'#{p}'" : p}.join(',')})")
            end
          end
          raise RequestFailed.new("#{method}: " + response["ErrorDescription"].to_s) unless response["Status"].eql? "Success"
          if parser
            parser.parse( response["Value"] )
            response = parser.response
          end

          response
        end
      end

      private

      def master_slave_request
        @ms_response ||= @factory.call("host.get_all_records", @credentials)
      end
    end
  end
end
