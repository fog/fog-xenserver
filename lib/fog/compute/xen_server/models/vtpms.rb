require 'fog/core/collection'

module Fog
  module Compute
    class XenServer
      module Models
        class Vtpms < Fog::Collection
          model Fog::Compute::XenServer::Models::Vtpm

          def all(options = {})
            data = service.get_records 'VTPM'
            load(data)
          end

          def get(vtpm_ref)
            if vtpm_ref && vtpm = service.get_record(vtpm_ref, 'VTPM')
              new(vtpm)
            else
              nil
            end
          end
        end
      end
    end
  end
end