module Fog
  module XenServer
    class Compute
      class Real
        def templates
          data = @connection.request(:parser => Fog::XenServer::Parsers::GetRecords.new, :method => "VM.get_all_records")
          data.keep_if { |vm| vm[:is_a_template] }
          servers.load(data)
        rescue Fog::XenServer::RequestFailed => e
          []
        end
      end
    end
  end
end