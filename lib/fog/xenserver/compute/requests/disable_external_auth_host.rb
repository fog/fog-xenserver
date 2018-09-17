module Fog
  module XenServer
    class Compute
      class Real
        def disable_external_auth_host(ref, config)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.disable_external_auth" }, ref, config)
        end
      end
    end
  end
end
