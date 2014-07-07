require 'fog/core/collection'

module Fog
  module Compute
    class XenServer
      module Models
        class Pifs < Fog::Collection
          model Fog::Compute::XenServer::Models::Pif

          def initialize(attributes)
            super
          end

          def all(options = {})
            data = service.get_records 'PIF'
            load(data)
          end

          def get(ref)
            if ref && obj = service.get_record( ref, 'PIF' )
              new(obj)
            end
          rescue Fog::XenServer::NotFound
            nil
          end
        end
      end
    end
  end
end