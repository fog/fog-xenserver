module Fog
  module Compute
    class XenServer
      module Models
        class StorageManagers < Fog::Collection
          model Fog::Compute::XenServer::Models::StorageManager
        end
      end
    end
  end
end