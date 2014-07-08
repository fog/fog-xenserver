module Fog
  module Compute
    class XenServer
      module Models
        class Hosts < Fog::Collection
          model Fog::Compute::XenServer::Models::Host
        end
      end
    end
  end
end