module Fog
  module XenServer
    class Compute
      module Models
        class HostsMetrics < Collection
          model Fog::XenServer::Compute::Models::HostMetrics
        end
      end
    end
  end
end