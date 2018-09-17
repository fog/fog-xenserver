module Fog
  module XenServer
    class Compute
      module Models
        class Events < Collection
          model Fog::XenServer::Compute::Models::Event
        end
      end
    end
  end
end
