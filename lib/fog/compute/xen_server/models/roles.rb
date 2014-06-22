require 'fog/core/collection'

module Fog
  module Compute
    class XenServer
      module Model
        class Roles < Fog::Collection
          model Fog::Compute::XenServer::Models::Role

          def all(options={})
            data = service.get_records 'role'
            load(data)
          end

          def get( role_ref )
            if role_ref && role = service.get_record( role_ref, 'role' )
              new(role)
            else
              nil
            end
          end
        end
      end
    end
  end
end