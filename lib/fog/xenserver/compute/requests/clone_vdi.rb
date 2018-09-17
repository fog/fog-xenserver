module Fog
  module XenServer
    class Compute
      class Real
        def clone_vdi(ref, driver_params)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VDI.clone" }, ref, driver_params)
        end
      end
    end
  end
end
