module Fog
  module XenServer
    class Compute
      module Models
        class Pcis < Collection
          model Fog::XenServer::Compute::Models::Pci
        end
      end
    end
  end
end