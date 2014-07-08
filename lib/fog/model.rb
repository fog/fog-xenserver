require 'fog/core/model'

module Fog
  class Model
    def self.provider_class(provider_class)
      @provider_class = provider_class.to_s
    end

    def provider_class
      self.class.instance_variable_get('@provider_class')
    end

    def self.has_one(association, collection_name, options = {})
      options[:aliases] = Array(options[:aliases])
      options[:aliases] << association.to_sym
      attribute("__#{association}".to_sym, options)
      define_method(association) do
        begin
          service.send(collection_name).get(send("__#{association}"))
        rescue Fog::XenServer::RequestFailed => e
          nil
        end
      end
    end

    def self.has_many(associations, collection_name, options = {})
      options[:aliases] = Array(options[:aliases])
      options[:aliases] << associations.to_sym
      attribute("__#{associations}".to_sym, options)
      define_method(associations) do
        send("__#{associations}").collect { |association| service.send(collection_name).get(association) }
      end
    end

    def set_attribute(name, *val)
      service.set_attribute(provider_class, reference, name, *val)
    end

    def refresh
      data = service.get_record(identity, provider_class)
      merge_attributes(data)
      true
    end

    alias_method :reload, :refresh
  end
end