module Fog
  module XenServer
    class Compute
      class Real
        def disable_external_auth_pool(ref, config)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "pool.disable_external_auth" }, ref, config)
        end
      end
    end
  end
end
