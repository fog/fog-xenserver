module Fog
  module XenServer
    class Compute
      class Real
        def ha_failover_plan_exists_pool(n)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "pool.ha_failover_plan_exists" }, n)
        end
      end
    end
  end
end
