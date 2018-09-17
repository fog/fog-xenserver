module Fog
  module XenServer
    class Compute
      class Real
        def read_database_pool_uuid_vdi(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VDI.read_database_pool_uuid" }, ref)
        end
      end
    end
  end
end
