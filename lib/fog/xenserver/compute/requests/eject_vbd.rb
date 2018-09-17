module Fog
  module XenServer
    class Compute
      class Real
        def eject_vbd(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VBD.eject" }, ref)
        end
      end
    end
  end
end
