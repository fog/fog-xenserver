module Fog
  module XenServer
    class Compute
      class Real
        def next_event
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "event.next" })
        end
      end
    end
  end
end
