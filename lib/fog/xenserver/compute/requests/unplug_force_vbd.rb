module Fog
  module XenServer
    class Compute
      class Real
        def unplug_force_vbd(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VBD.unplug_force" }, ref)
        end
      end
    end
  end
end
