module Fog
  module XenServer
    class Compute
      module Models
        class Vlans < Collection
          model Fog::XenServer::Compute::Models::Vlan
        end
      end
    end
  end
end