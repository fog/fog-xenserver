module Fog
  module XenServer
    class Compute
      module Models
        class Pools < Collection
          model Fog::XenServer::Compute::Models::Pool
        end
      end
    end
  end
end