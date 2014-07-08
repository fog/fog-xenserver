module Fog
  module Compute
    class XenServer
      module Models
        class Pcis < Fog::Collection
          model Fog::Compute::XenServer::Models::Pci
        end
      end
    end
  end
end