require 'fog/core/collection'

module Fog
  module Compute
    class XenServer
      module Models
        class Vdis < Fog::Collection
          model Fog::Compute::XenServer::Models::Vdi

          def all(options = {})
            data = service.get_records 'VDI'
            load(data)
          end

          def get(vdi_ref)
            if vdi_ref && vdi = service.get_record(vdi_ref, 'VDI')
              new(vdi)
            end
          rescue Fog::XenServer::NotFound
            nil
          end
        end
      end
    end
  end
end