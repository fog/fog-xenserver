module Fog
  module XenServer
    class Compute
      class Real
        def set_virtual_size_vdi(ref, int)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VDI.set_virtual_size" }, ref, int)
        end
      end
    end
  end
end
