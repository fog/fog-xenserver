module Fog
  module Compute
    class XenServer
      module Model
        class Roles < Fog::Collection
          model Fog::Compute::XenServer::Models::Role
        end
      end
    end
  end
end