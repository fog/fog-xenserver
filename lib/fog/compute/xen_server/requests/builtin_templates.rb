module Fog
  module Compute
    class XenServer
      class Real
        def builtin_templates
          data = @connection.request(:parser => Fog::Parsers::XenServer::GetRecords.new, :method => "VM.get_all_records")
          data.keep_if { |vm| vm[:is_a_template] and !vm[:other_config]['default_template'].nil? }
          servers.load(data)
        rescue Fog::XenServer::RequestFailed => e
          []
        end
      end

      class Mock
        def builtin_templates
          Fog::Mock.not_implemented
        end
      end
    end
  end
end