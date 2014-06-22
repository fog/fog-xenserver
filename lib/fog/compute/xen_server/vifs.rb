require 'fog/core/collection'
require 'fog/compute/xen_server/vif'

module Fog
  module Compute
    class XenServer
      class Vifs < Fog::Collection
        model Fog::Compute::XenServer::VIF

        def all(options = {})
          data = service.get_records 'VIF'
          load(data)
        end

        def get( ref )
          if ref && obj = service.get_record( ref, 'VIF' )
            new(obj)
          end
        rescue Fog::XenServer::NotFound
          nil
        end
      end
    end
  end
end