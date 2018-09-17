module Fog
  module XenServer
    class Compute
      class Real
        def get_current_id_event()
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "event.get_current_id" })
        end
      end
    end
  end
end
