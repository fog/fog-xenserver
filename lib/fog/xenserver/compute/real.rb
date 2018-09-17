module Fog
  module XenServer
    class Compute
      class Real
        attr_reader :host, :username

        def initialize(options={})
          @host        = options[:xenserver_url]
          @username    = options[:xenserver_username]
          @password    = options[:xenserver_password]
          @defaults    = options[:xenserver_defaults] || {}
          @timeout     = options[:xenserver_timeout] || 30
          @use_ssl     = options[:xenserver_use_ssl] || false
          @port        = options[:xenserver_port] || 80
          @verify_mode = options[:xenserver_verify_mode] || OpenSSL::SSL::VERIFY_PEER
          @connection  = Fog::XenServer::Connection.new(
            @host, @port, @use_ssl, @verify_mode, @timeout)

          @connection.authenticate(@username, @password)

          if @connection.slave?
            @connection = Fog::XenServer::Connection.new(@connection.master, @port, @use_ssl, @verify_mode, @timeout)
            @connection.authenticate(@username, @password)
          end
        end

        def reload
          @connection.authenticate(@username, @password)
        end

        def default_template=(name)
          @defaults[:template] = name
        end

        def default_template
          return nil if @defaults[:template].nil?
          (custom_templates + builtin_templates).find do |s|
            (s.name == @defaults[:template]) or (s.uuid == @defaults[:template])
          end
        end

        def default_network
          networks.find { |n| n.name == (@defaults[:network] || "Pool-wide network associated with eth0") }
        end

        def credentials
          @connection.credentials
        end

        def connection_host
          hosts.find { |x| x.address == host }
        end

        def event
          @event ||= Fog::XenServer::Compute::Models::Event.new(service: self)
        end
      end
    end
  end
end
