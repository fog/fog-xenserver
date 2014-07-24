module Fog
  module Compute
   class XenServer
      class Real
        def get_records( klass, options = {} )
          begin
            res = @connection.request(:parser => Fog::Parsers::XenServer::GetRecords.new, :method => "#{klass}.get_all_records")
            res
          rescue Fog::XenServer::RequestFailed => e
            []
          end
        end
      end
    end
  end
end