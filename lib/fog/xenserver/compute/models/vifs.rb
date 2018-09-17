module Fog
  module XenServer
    class Compute
      module Models
        class Vifs < Collection
          model Fog::XenServer::Compute::Models::Vif
        end
      end
    end
  end
end