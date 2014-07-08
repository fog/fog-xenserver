module Fog
  module Compute
    class XenServer
      module Models
        class ServerAppliances < Fog::Collection
          model Fog::Compute::XenServer::Models::ServerAppliance
        end
      end
    end
  end
end