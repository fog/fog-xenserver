module Fog
  module XenServer
    class Compute
      class Real
        def get_records(klass, options = {})
          @connection.request(:parser => Fog::XenServer::Parsers::GetRecords.new, :method => "#{klass}.get_all_records")
        rescue Fog::XenServer::RequestFailed => e
          []
        end
      end
    end
  end
end