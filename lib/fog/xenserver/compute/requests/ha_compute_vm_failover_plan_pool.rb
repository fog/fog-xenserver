module Fog
  module XenServer
    class Compute
      class Real
        def ha_compute_vm_failover_plan_pool(failed_hosts, failed_vms)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "pool.ha_compute_vm_failover_plan" }, failed_hosts, failed_vms)
        end
      end
    end
  end
end
