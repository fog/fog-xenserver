module Fog
  module Compute
    class XenServer
      class PifsMetrics < Fog::Collection
        model Fog::Compute::XenServer::Models::PifMetrics
      end
    end
  end
end