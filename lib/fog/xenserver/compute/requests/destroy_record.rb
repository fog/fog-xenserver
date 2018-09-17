module Fog
  module XenServer
    class Compute
      class Real
        def destroy_record(ref, provider_class)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "#{provider_class}.destroy" }, ref)
        end
      end
    end
  end
end