module Fog
  module Compute
    class XenServer
      module Models
        class Collection < Fog::Collection
          def all(_options = {})
            data = service.get_records model.provider_class
            load(data)
          end

          def get(ref)
            data = service.get_record(ref, model.provider_class)
            new(data)
          rescue Fog::XenServer::NotFound, Fog::XenServer::RequestFailed
            nil
          end

          def method_missing(method, *args)
            if method =~ /^(find|get)_by_(name|uuid)$/
              return get_by(method, args[0])
            end

            super
          end

          def get_by_reference_or_name_or_uuid(query)
            get(query) || get_by_name(query) || get_by_uuid(query)
          end

          private

          def get_by(method, value)
            method = method.to_s.sub('find_by_', 'get_by_')
            ref = service.send(method, value, model.provider_class)
            return nil if ref.nil?
            get(ref)
          rescue Fog::XenServer::NotFound, Fog::XenServer::RequestFailed
            nil
          end
        end
      end
    end
  end
end
