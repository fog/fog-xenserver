module Fog
  module XenServer
    class Compute
      module Models
        class GuestsMetrics < Collection
          model Fog::XenServer::Compute::Models::GuestMetrics
        end
      end
    end
  end
end