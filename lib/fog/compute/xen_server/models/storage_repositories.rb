module Fog
  module Compute
    class XenServer
      module Models
        class StorageRepositories < Fog::Collection
          model Fog::Compute::XenServer::Models::StorageRepository
        end
      end
    end
  end
end