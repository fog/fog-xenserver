module Fog
  module XenServer
    class Compute
      class Real
        def snapshot_vdi(ref, driver_params)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VDI.snapshot" }, ref, driver_params)
        end
      end
    end
  end
end
