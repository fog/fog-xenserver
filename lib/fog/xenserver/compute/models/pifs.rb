module Fog
  module XenServer
    class Compute
      module Models
        class Pifs < Collection
          model Fog::XenServer::Compute::Models::Pif
        end
      end
    end
  end
end