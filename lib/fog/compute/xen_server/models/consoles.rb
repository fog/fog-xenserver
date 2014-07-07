require 'fog/core/collection'

module Fog
  module Compute
    class XenServer
      module Models
        class Consoles < Fog::Collection
          model Fog::Compute::XenServer::Models::Console

          def all(options = {})
            data = service.get_records 'console'
            load(data)
          end

          def get(console_ref)
            if console_ref && console = service.get_record( console_ref, 'console' )
              new(console)
            else
              nil
            end
          end
        end
      end
    end
  end
end