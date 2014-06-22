require 'fog/core/collection'

module Fog
  module Compute
    class XenServer
      module Models
        class Vifs < Fog::Collection
          model Fog::Compute::XenServer::Models::Vif

          def all(options = {})
            data = service.get_records 'VIF'
            load(data)
          end

          def get( ref )
            if ref && obj = service.get_record( ref, 'VIF' )
              new(obj)
            end
          rescue Fog::XenServer::NotFound
            nil
          end
        end
      end
    end
  end
end