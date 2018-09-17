module Fog
  module XenServer
    class Compute
      class Real
        def plug_pif(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "PIF.plug" }, ref)
        end
      end
    end
  end
end
