module Fog
  module Compute
    class XenServer
      module Models
        class Consoles < Fog::Collection
          model Fog::Compute::XenServer::Models::Console
        end
      end
    end
  end
end