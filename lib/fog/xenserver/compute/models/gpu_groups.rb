module Fog
  module XenServer
    class Compute
      module Models
        class GpuGroups < Collection
          model Fog::XenServer::Compute::Models::GpuGroup
        end
      end
    end
  end
end