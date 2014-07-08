module Fog
  module Compute
    class XenServer
      module Models
        class HostPatchs < Fog::Collection
          model Fog::Compute::XenServer::Models::HostPatch
        end
      end
    end
  end
end