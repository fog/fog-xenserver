require 'fog/core/collection'

module Fog
  module Compute
    class XenServer
      module Models
        class CrashDumps < Fog::Collection
          model Fog::Compute::XenServer::Models::CrashDump

          def all(options = {})
            data = service.get_records 'crashdump'
            load(data)
          end

          def get(crashdump_ref)
            if crashdump_ref && crashdump = service.get_record( crashdump_ref, 'crashdump' )
              new(crashdump)
            else
              nil
            end
          end
        end
      end
    end
  end
end