require 'fog/core/collection'

module Fog
  module Compute
    class XenServer
      module Models
        class HostsMetrics < Fog::Collection
          model Fog::Compute::XenServer::Models::HostMetrics

          def all(options = {})
            data = service.get_records 'host_metrics'
            load(data)
          end

          def get(host_metrics_ref)
            if host_metrics_ref && host_metrics = service.get_record( host_metrics_ref, 'host_metrics' )
              new(host_metrics)
            else
              nil
            end
          end
        end
      end
    end
  end
end