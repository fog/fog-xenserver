module Fog
  module Compute
    class XenServer
      module Models
        class Pbds < Fog::Collection
          model Fog::Compute::XenServer::Models::Pbd
        end
      end
    end
  end
end