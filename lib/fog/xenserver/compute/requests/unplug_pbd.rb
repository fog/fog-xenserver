module Fog
  module XenServer
    class Compute
      class Real
        def unplug_pbd(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "PBD.unplug" }, ref)
        end
      end
    end
  end
end
