require 'fog/core/collection'

module Fog
  class Collection
    def all(options = {})
      data = service.get_records model.provider_class
      load(data)
    end

    def get(ref)
      data = service.get_record(ref, model.provider_class)
      new(data)
    rescue Fog::XenServer::NotFound
      nil
    end
  end
end