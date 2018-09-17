module Fog
  module XenServer
    class Compute
      class Real
        def unplug_vif(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VIF.unplug" }, ref)
        end
      end
    end
  end
end
