module Fog
  module Compute
    class XenServer
      module Models
        class GuestsMetrics < Fog::Collection
          model Fog::Compute::XenServer::Models::GuestMetrics
        end
      end
    end
  end
end