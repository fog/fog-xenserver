require 'fog/core/collection'
require 'fog/compute/xen_server/network'

module Fog
  module Compute
    class XenServer
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