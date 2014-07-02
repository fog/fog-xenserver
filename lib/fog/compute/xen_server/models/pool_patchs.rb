require 'fog/core/collection'

module Fog
  module Compute
    class XenServer
      module Models
        class PoolPatchs < Fog::Collection
          model Fog::Compute::XenServer::Models::PoolPatch

          def all(options={})
            data = service.get_records 'pool_patch'
            load(data)
          end

          def get( pool_patch_ref )
            if pool_patch_ref && pool_patch = service.get_record( pool_patch_ref, 'pool_patch' )
              new(pool_patch)
            else
              nil
            end
          end
        end
      end
    end
  end
end