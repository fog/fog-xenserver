module Fog
  module XenServer
    class Compute
      class Real
        def plug_vbd(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VBD.plug" }, ref)
        end
      end
    end
  end
end
