require 'fog/core/collection'

module Fog
  module Compute
    class XenServer
      module Models
        class Hosts < Fog::Collection
          model Fog::Compute::XenServer::Models::Host

          def all(options = {})
            data = service.get_records 'host'
            load(data)
          end

          def get(host_ref)
            if host_ref && host = service.get_record( host_ref, 'host' )
              new(host)
            else
              nil
            end
          end
        end
      end
    end
  end
end