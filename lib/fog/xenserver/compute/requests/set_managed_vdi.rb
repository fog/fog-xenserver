module Fog
  module XenServer
    class Compute
      class Real
        def set_managed_vdi(ref, value)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VDI.set_managed" }, ref, value)
        end
      end
    end
  end
end
