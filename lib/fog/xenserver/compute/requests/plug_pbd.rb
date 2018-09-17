module Fog
  module XenServer
    class Compute
      class Real
        def plug_pbd(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "PBD.plug" }, ref)
        end
      end
    end
  end
end
