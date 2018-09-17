module Fog
  module XenServer
    class Compute
      class Real
        def enable_external_auth_pool(ref, config, service_name, auth_type)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "pool.enable_external_auth" }, ref, config, service_name, auth_type)
        end
      end
    end
  end
end
