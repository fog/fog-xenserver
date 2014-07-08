module Fog
  module Compute
    class XenServer
      module Models
        class Pifs < Fog::Collection
          model Fog::Compute::XenServer::Models::Pif
        end
      end
    end
  end
end