module Fog
  module XenServer
    class Compute
      class Real
        def register_event(classes)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "event.register" }, classes)
        end
      end
    end
  end
end
