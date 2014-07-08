module Fog
  module Compute
    class XenServer
      module Models
        class Tunnels < Fog::Collection
          model Fog::Compute::XenServer::Models::Tunnel
        end
      end
    end
  end
end