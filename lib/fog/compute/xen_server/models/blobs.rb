require 'fog/core/collection'

module Fog
  module Compute
    class XenServer
      module Models
        class Blobs < Fog::Collection
          model Fog::Compute::XenServer::Models::Blob

          def all(options = {})
            data = service.get_records 'blob'
            load(data)
          end

          def get(blob_ref)
            if blob_ref && blob = service.get_record( blob_ref, 'blob' )
              new(blob)
            else
              nil
            end
          end
        end
      end
    end
  end
end