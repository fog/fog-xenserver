module Fog
  module Compute
    class XenServer
      module Models
        class Pools < Fog::Collection
          model Fog::Compute::XenServer::Models::Pool
        end
      end
    end
  end
end