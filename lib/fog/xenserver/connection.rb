require 'xmlrpc/client'

module Fog
  module XenServer
    class Connection
      attr_reader :credentials

      def initialize(host, port, use_ssl, verify_mode, timeout)
        @host = host
        @port = port
        @use_ssl = use_ssl
        @verify_mode = verify_mode
        @timeout = timeout
        connect
      end

      def connect
        @factory = XMLRPC::Client.new3(host: @host, port: @port, use_ssl: @use_ssl, path: "/")
        if @factory.respond_to?(:http)
          @factory.http.verify_mode = @verify_mode
        else
          @factory.instance_variable_get(:@http).verify_mode = @verify_mode
        end
        @factory.set_parser(NokogiriStreamParser.new)
        @factory.timeout = @timeout
      end

      def authenticate( username, password )
        response = @factory.call("session.login_with_password", username.to_s, password.to_s)
        unless response["Status"] =~ /Success/
          if response.key?("ErrorDescription") &&
             response["ErrorDescription"].is_a?(Array) &&
             response["ErrorDescription"].length >= 2 &&
             response["ErrorDescription"][0] == "HOST_IS_SLAVE"
            @host = response["ErrorDescription"][1]
            connect
            response = @factory.call("session.login_with_password", username.to_s, password.to_s)
            unless response["Status"] =~ /Success/
              raise Fog::XenServer::InvalidLogin.new
            end
            @credentials = response["Value"]
            return
          end
          raise Fog::XenServer::InvalidLogin.new
        end
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
    end
  end
end
