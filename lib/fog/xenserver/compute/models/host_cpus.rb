module Fog
  module XenServer
    class Compute
      module Models
        class HostCpus < Collection
          model Fog::XenServer::Compute::Models::HostCpu
        end
      end
    end
  end
end