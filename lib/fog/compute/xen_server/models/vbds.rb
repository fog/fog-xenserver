require 'fog/core/collection'

module Fog
  module Compute
    class XenServer
      module Models
        class Vbds < Fog::Collection
          model Fog::Compute::XenServer::Models::Vbd

          def initialize(attributes)
            super
          end

          def all(options = {})
            data = service.get_records 'VBD'
            load(data)
          end

          def get(vbd_ref)
            if vbd_ref && vbd = service.get_record(vbd_ref, 'VBD')
              new(vbd)
            end
          rescue Fog::XenServer::NotFound
            nil
          end
        end
      end
    end
  end
end