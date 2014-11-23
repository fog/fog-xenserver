module Fog
  module Compute
    class XenServer
      class Real
        def unplug_vif(ref)
          @connection.request({ :parser => Fog::Parsers::XenServer::Base.new, :method => 'vif.unplug' }, ref)
        end
      end
    end
  end
end
