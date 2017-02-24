require "xmlrpc/client"

module Fog
  module XenServer
    class Connection
      attr_reader :credentials

      def initialize(host, timeout)
        @factory = XMLRPC::Client.new(host, "/")
        @factory.set_parser(NokogiriStreamParser.new)
        @factory.timeout = timeout
      end

      def authenticate( username, password )
        response = @factory.call("session.login_with_password", username.to_s, password.to_s)
        raise Fog::XenServer::InvalidLogin.new unless response["Status"] =~ /Success/
        @credentials = response["Value"]
      end

      def request(options, *params)
        begin
          parser = options.delete(:parser)
          method = options.delete(:method)
          response = @factory.call(method, @credentials, *request_params(params))

          if !request_successful?(response)
            raise RequestFailed.new(
              %(#{method}: #{response["ErrorDescription"]})
            )
          end

          parsed_response(parser, response)
        end
      end

      private

      def format_string_params(params)
        params.map { |p| p.is_a?(String) ? "'#{p}'" : p }.join(",")
      end

      def parsed_response(parser, response)
        return response unless parser

        parser.parse(response["Value"])
        parser.response
      end

      def request_params(params)
        if params.empty?
          []
        elsif params.length.eql?(1) && [Hash, Array].include?(params.first.class)
          [params.first]
        elsif params.length.eql?(2) and params.last.is_a?(Array)
          [params.first, params.last]
        else
          format_string_params(params)
        end
      end

      def request_successful?(response)
        response["Status"] == "Success"
      end
    end
  end
end
