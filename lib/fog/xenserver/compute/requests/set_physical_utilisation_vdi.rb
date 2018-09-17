module Fog
  module XenServer
    class Compute
      class Real
        def set_physical_utilisation_vdi(ref, value)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VDI.set_physical_utilisation" }, ref, value)
        end
      end
    end
  end
end
