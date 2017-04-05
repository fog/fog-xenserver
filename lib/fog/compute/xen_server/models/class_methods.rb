module Fog
  module Compute
    class XenServer
      module Models
        module ClassMethods
          def collection_name(collection_name = nil)
            return @collection_name if collection_name.nil?
            @collection_name = collection_name
          end

          def define_methods(methods)
            # would be much simpler just call __callee__ on request without reference
            # instead of __method__ and set an alias for each method defined on
            # methods, just creating a method for each one, so we can keep compatability
            # with ruby 1.8.7 that does not have __callee__
            methods.each do |method|
              define_method(method) do |*args|
                service.send("#{__method__}_#{provider_class.downcase}", *args)
              end
            end
          end

          def provider_class(provider_class = nil)
            return @provider_class if provider_class.nil?
            @provider_class = provider_class.to_s
          end

          def require_before_save(*args)
            return @require_before_save || [] if args.empty?
            @require_before_save = args
          end
        end
      end
    end
  end
end
