module Fog
  module XenServer
    class Compute
      class Real
        def from_event(classes, token, timeout)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "event.from" }, classes, token, timeout)
        end
      end
    end
  end
end
