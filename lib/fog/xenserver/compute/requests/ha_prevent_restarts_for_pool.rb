module Fog
  module XenServer
    class Compute
      class Real
        def ha_prevent_restarts_for_pool(seconds)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "pool.ha_prevent_restarts_for" }, seconds)
        end
      end
    end
  end
end
