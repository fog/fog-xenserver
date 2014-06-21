require 'fog/core/collection'
require 'fog/compute/xen_server/vtpm'

module Fog
  module Compute
    class XenServer
      class Vtpms < Fog::Collection
        model Fog::Compute::XenServer::Vtpm

        def all(options={})
          data = service.get_records 'VTPM'
          load(data)
        end

        def get( vtpm_ref )
          if vtpm_ref && vtpm = service.get_record( vtpm_ref, 'VTPM' )
            new(vtpm)
          else
            nil
          end
        end
      end
    end
  end
end