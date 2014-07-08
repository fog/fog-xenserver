module Fog
  module Compute
    class XenServer
      module Models
        class Pgpus < Fog::Collection
          model Fog::Compute::XenServer::Models::Pgpu
        end
      end
    end
  end
end