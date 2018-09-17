module Fog
  module XenServer
    class Compute
      class Real
        def pool_migrate_vdi(ref, sr, options)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VDI.pool_migrate" }, ref, sr, options)
        end
      end
    end
  end
end
