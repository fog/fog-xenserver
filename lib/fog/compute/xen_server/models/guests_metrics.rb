require 'fog/core/collection'

module Fog
  module Compute
    class XenServer
      module Models
        class GuestsMetrics < Fog::Collection
          model Fog::Compute::XenServer::Models::GuestMetrics

          def all(options = {})
            data = service.get_records 'VM_guest_metrics'
            load(data)
          end

          def get(guest_metrics_ref)
            if guest_metrics_ref && guest_metrics = service.get_record( guest_metrics_ref, 'VM_guest_metrics' )
              new(guest_metrics)
            else
              nil
            end
          end
        end
      end
    end
  end
end