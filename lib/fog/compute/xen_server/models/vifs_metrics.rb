require 'fog/core/collection'

module Fog
  module Compute
    class XenServer
      module Models
        class VifsMetrics < Fog::Collection
          model Fog::Compute::XenServer::Models::VifMetrics

          def all(options={})
            data = service.get_records 'VIF_metrics'
            load(data)
          end

          def get( vif_metrics_ref )
            if vif_metrics_ref && vif_metrics = service.get_record( vif_metrics_ref, 'VIF_metrics' )
              new(vif_metrics)
            else
              nil
            end
          end
        end
      end
    end
  end
end