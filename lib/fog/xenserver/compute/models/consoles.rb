module Fog
  module XenServer
    class Compute
      module Models
        class Consoles < Collection
          model Fog::XenServer::Compute::Models::Console
        end
      end
    end
  end
end