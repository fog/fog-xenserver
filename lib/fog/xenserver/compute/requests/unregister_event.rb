module Fog
  module XenServer
    class Compute
      class Real
        def unregister_event(classes)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "event.unregister" }, classes)
        end
      end
    end
  end
end
