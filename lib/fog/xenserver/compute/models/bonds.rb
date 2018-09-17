module Fog
  module XenServer
    class Compute
      module Models
        class Bonds < Collection
          model Fog::XenServer::Compute::Models::Bond
        end
      end
    end
  end
end