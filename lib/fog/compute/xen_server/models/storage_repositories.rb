require 'fog/core/collection'

module Fog
  module Compute
    class XenServer
      module Models
        class StorageRepositories < Fog::Collection
          model Fog::Compute::XenServer::Models::StorageRepository

          def all
            data = service.get_records 'SR'
            #data.delete_if {|sr| sr[:shared].eql?(false)}
            #data.delete_if {|sr| sr[:content_type].eql?('iso')}
            load(data)
          end

          def get(sr_ref)
            if sr_ref && sr = service.get_record(sr_ref, 'SR')
              new(sr)
            else
              nil
            end
          end
        end
      end
    end
  end
end