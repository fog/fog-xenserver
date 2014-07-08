module Fog
  module Compute
    class XenServer
      module Models
        class DrTasks < Fog::Collection
          model Fog::Compute::XenServer::Models::DrTask
        end
      end
    end
  end
end