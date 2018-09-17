module Fog
  module XenServer
    class Compute
      class Real
        def plug_vif(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VIF.plug" }, ref)
        end
      end
    end
  end
end
