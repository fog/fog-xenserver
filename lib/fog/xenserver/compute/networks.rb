require 'fog/core/collection'
require 'fog/xenserver/models/compute/network'

module Fog
  module XenServer
    class Compute
      class Networks < Fog::Collection
        model Fog::Compute::XenServer::Network

        def all(options = {})
          data = service.get_records 'network'
          load(data)
        end

        def get( ref )
          if ref && obj = service.get_record( ref, 'network' )
            new(obj)
          end
        rescue Fog::XenServer::NotFound
          nil
        end
      end
    end
  end
end