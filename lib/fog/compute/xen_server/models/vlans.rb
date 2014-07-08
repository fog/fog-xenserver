module Fog
  module Compute
    class XenServer
      module Models
        class Vlans < Fog::Collection
          model Fog::Compute::XenServer::Models::Vlan
        end
      end
    end
  end
end