module Fog
  module XenServer
    module Parsers
      class Base
        attr_reader :response

        def initialize
          reset
        end

        def reset
          @response = {}
        end

        def parse( data )
          if data.kind_of? Hash
            data.keys.each do |key|
              data[key.to_sym] = data.delete(key) if key.respond_to?(:to_sym)
            end
            @response = data
            @response.each do |k,v|
              if @response[k] == "OpaqueRef:NULL"
                @response[k] = nil
              end
            end
          elsif data.kind_of? Array
            @response = data.first
          elsif data.kind_of?(String) and data =~ /OpaqueRef:/
            @response = data
          end

          @response
        end
      end
    end
  end
end
