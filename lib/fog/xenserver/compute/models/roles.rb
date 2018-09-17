module Fog
  module XenServer
    class Compute
      module Models
        class Roles < Collection
          model Fog::XenServer::Compute::Models::Role
        end
      end
    end
  end
end