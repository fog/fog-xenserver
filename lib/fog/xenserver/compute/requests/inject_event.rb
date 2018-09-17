module Fog
  module XenServer
    class Compute
      class Real
        def inject_event(klass, object_ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "event.inject" }, klass, object_ref)
        end
      end
    end
  end
end
