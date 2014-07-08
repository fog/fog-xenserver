module Fog
  module Compute
    class XenServer
      module Models
        class Vbds < Fog::Collection
          model Fog::Compute::XenServer::Models::Vbd
        end
      end
    end
  end
end