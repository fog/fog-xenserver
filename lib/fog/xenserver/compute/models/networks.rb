module Fog
  module XenServer
    class Compute
      module Models
        class Networks < Collection
          model Fog::XenServer::Compute::Models::Network
        end
      end
    end
  end
end