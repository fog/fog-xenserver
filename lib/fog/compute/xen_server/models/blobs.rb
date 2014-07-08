module Fog
  module Compute
    class XenServer
      module Models
        class Blobs < Fog::Collection
          model Fog::Compute::XenServer::Models::Blob
        end
      end
    end
  end
end