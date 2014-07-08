module Fog
  module Compute
    class XenServer
      module Models
        class PoolPatchs < Fog::Collection
          model Fog::Compute::XenServer::Models::PoolPatch
        end
      end
    end
  end
end