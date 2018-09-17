module Fog
  module XenServer
    class Compute
      class Real
        def unplug_vbd(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VBD.unplug" }, ref)
        end
      end
    end
  end
end
