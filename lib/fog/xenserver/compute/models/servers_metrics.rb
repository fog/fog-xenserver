module Fog
  module XenServer
    class Compute
      module Models
        class ServersMetrics < Collection
          model Fog::XenServer::Compute::Models::ServerMetrics
        end
      end
    end
  end
end