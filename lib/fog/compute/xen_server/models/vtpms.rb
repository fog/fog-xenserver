module Fog
  module Compute
    class XenServer
      module Models
        class Vtpms < Fog::Collection
          model Fog::Compute::XenServer::Models::Vtpm
        end
      end
    end
  end
end