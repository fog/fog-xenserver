module Fog
  module XenServer
    class Compute
      module Models
        class Pgpus < Collection
          model Fog::XenServer::Compute::Models::Pgpu
        end
      end
    end
  end
end