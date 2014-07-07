require 'fog/core/collection'

module Fog
  module Compute
    class XenServer
      module Models
        class Pgpus < Fog::Collection
          model Fog::Compute::XenServer::Models::Pgpu

          def all(options = {})
            data = service.get_records 'PGPU'
            load(data)
          end

          def get(pgpu_ref)
            if pgpu_ref && pgpu = service.get_record( pgpu_ref, 'PGPU' )
              new(pgpu)
            else
              nil
            end
          end
        end
      end
    end
  end
end