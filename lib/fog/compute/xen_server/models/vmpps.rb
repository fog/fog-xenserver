module Fog
  module Compute
    class XenServer
      module Models
        class Vmpps < Fog::Collection
          model Fog::Compute::XenServer::Models::Vmpp
        end
      end
    end
  end
end