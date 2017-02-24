module Fog
  module Compute
    class XenServer
      class Real
        attr_reader :host, :username

        def initialize(options={})
          @host        = options[:xenserver_url]
          @username    = options[:xenserver_username]
          @password    = options[:xenserver_password]
          @defaults    = options[:xenserver_defaults] || {}
          @timeout     = options[:xenserver_timeout] || 30
          @connection  = Fog::XenServer::Connection.new(@host, @timeout)
          @connection.authenticate(@username, @password)
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
          @event ||= Fog::Compute::XenServer::Models::Event.new(service: self)
        end

        private

        def load_data(keep_type = nil, delete_templates = false)
          data = request_get_all_records

          data.keep_if { |vm| vm[type] } if keep_type
          if delete_templates
            data.delete_if do |vm|
              !vm[:is_a_template] || vm[:other_config]["default_template"].nil?
            end
          end

          servers.load(data)
        rescue Fog::XenServer::RequestFailed
          []
        end

        def request_get_all_records
          @connection.request(
            :parser => Fog::Parsers::XenServer::GetRecords.new,
            :method => "VM.get_all_records"
          )
        end
      end
    end
  end
end
