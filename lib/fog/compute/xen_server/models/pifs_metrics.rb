module Fog
  module Compute
    class XenServer
      module Models
        class PifsMetrics < Fog::Collection
          model Fog::Compute::XenServer::Models::PifMetrics
        end
      end
    end
  end
end