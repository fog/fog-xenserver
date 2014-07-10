require 'fog/core/model'

module Fog
  class Model
    def self.provider_class(provider_class = nil)
      return @provider_class if provider_class.nil?
      @provider_class = provider_class.to_s
    end

    def provider_class
      self.class.provider_class
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

    def method_missing(method_name, *args)
      service.send("#{method_name}_#{provider_class.downcase}", identity, *args)
    end

    def respond_to_missing?(method_name, include_private = false)
      return true if service.respond_to?("#{method_name}_#{provider_class.downcase}")
      super
    end
  end
end