module Fog
  module XenServer
    class Compute
      class Real
        def update_vdi(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VDI.update" }, ref)
        end
      end
    end
  end
end
