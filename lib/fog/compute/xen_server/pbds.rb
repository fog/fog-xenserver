require 'fog/core/collection'
require 'fog/compute/xen_server/pbd'

module Fog
  module Compute
    class XenServer
      class Pbds < Fog::Collection
        model Fog::Compute::XenServer::PBD

        def all(options = {})
          data = service.get_records 'PBD'
          load(data)
        end

        def get( ref )
          if ref && obj = service.get_record( ref, 'PBD' )
            new(obj)
          else
            nil
          end
        end
      end
    end
  end
end