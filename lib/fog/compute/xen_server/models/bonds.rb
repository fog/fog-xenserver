module Fog
  module Compute
    class XenServer
      module Models
        class Bonds < Fog::Collection
          model Fog::Compute::XenServer::Models::Bond
        end
      end
    end
  end
end