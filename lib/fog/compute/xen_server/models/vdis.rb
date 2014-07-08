module Fog
  module Compute
    class XenServer
      module Models
        class Vdis < Fog::Collection
          model Fog::Compute::XenServer::Models::Vdi
        end
      end
    end
  end
end