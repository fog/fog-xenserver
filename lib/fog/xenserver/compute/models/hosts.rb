module Fog
  module XenServer
    class Compute
      module Models
        class Hosts < Collection
          model Fog::XenServer::Compute::Models::Host
        end
      end
    end
  end
end