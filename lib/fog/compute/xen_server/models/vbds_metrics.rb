require 'fog/core/collection'

module Fog
  module Compute
    class XenServer
      module Models
        class VbdsMetrics < Fog::Collection
          model Fog::Compute::XenServer::Models::VbdMetrics

          def all(options = {})
            data = service.get_records 'VBD_metrics'
            load(data)
          end

          def get(vbd_metrics_ref)
            if vbd_metrics_ref && vbd_metrics = service.get_record( vbd_metrics_ref, 'VBD_metrics' )
              new(vbd_metrics)
            else
              nil
            end
          end
        end
      end
    end
  end
end