module Fog
  module XenServer
    class Compute
      class Real
        def enable_ha_pool(heartbeat_srs, configuration)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "pool.enable_ha" }, heartbeat_srs, configuration)
        end
      end
    end
  end
end
