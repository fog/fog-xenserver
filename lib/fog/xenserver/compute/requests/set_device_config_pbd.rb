module Fog
  module XenServer
    class Compute
      class Real
        def set_device_config_pbd(ref, value)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "PBD.set_device_config" }, ref, value)
        end
      end
    end
  end
end
