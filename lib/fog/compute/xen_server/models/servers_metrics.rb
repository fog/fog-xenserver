require 'fog/core/collection'

module Fog
  module Compute
    class XenServer
      module Models
        class ServersMetrics < Fog::Collection
          model Fog::Compute::XenServer::Models::ServerMetrics

          def all(options = {})
            data = service.get_records 'VM_metrics'
            load(data)
          end

          def get(vm_metrics_ref)
            if vm_metrics_ref && vm_metrics = service.get_record( vm_metrics_ref, 'VM_metrics' )
              new(vm_metrics)
            else
              nil
            end
          end
        end
      end
    end
  end
end