module Fog
  module XenServer
    class Compute
      class Real
        def builtin_templates
          data = @connection.request(:parser => Fog::XenServer::Parsers::GetRecords.new, :method => "VM.get_all_records")
          data.delete_if { |vm| !vm[:is_a_template] || vm[:other_config]["default_template"].nil? }
          servers.load(data)
        rescue Fog::XenServer::RequestFailed => e
          []
        end
      end
    end
  end
end