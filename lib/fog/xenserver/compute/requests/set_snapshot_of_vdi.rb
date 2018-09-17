module Fog
  module XenServer
    class Compute
      class Real
        def set_snapshot_of_vdi(ref, vdi)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VDI.set_snapshot_of" }, ref, vdi)
        end
      end
    end
  end
end
