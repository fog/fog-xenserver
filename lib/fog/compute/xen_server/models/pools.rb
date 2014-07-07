require 'fog/core/collection'

module Fog
  module Compute
    class XenServer
      module Models
        class Pools < Fog::Collection
          model Fog::Compute::XenServer::Models::Pool

          def initialize(attributes)
            super
          end

          def all(options = {})
            data = service.get_records 'pool'
            load(data)
          end

          def get(pool_ref)
            if pool_ref && pool = service.get_record( pool_ref, 'pool' )
              new(pool)
            else
              nil
            end
          end
        end
      end
    end
  end
end