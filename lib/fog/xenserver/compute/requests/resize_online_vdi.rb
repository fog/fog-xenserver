module Fog
  module XenServer
    class Compute
      class Real
        def resize_online_vdi(ref, size)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VDI.resize_online" }, ref, size)
        end
      end
    end
  end
end
