module Fog
  module XenServer
    class Compute
      class Real
        def get_record(ref, provider_class, options = {})
          get_record_by_ref(ref, provider_class, options)
        end

        def get_record_by_ref(ref, provider_class, options = {})
          @connection.request({:parser => Fog::XenServer::Parsers::Base.new, :method => "#{provider_class}.get_record"}, ref).merge(:reference => ref)
        end

        def get_by_name(name, provider_class)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "#{provider_class}.get_by_name_label" }, name)
        end

        def get_by_uuid(uuid, provider_class)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "#{provider_class}.get_by_uuid" }, uuid)
        end
      end
    end
  end
end