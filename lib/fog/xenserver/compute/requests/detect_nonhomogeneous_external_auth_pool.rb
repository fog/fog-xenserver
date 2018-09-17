module Fog
  module XenServer
    class Compute
      class Real
        def detect_nonhomogeneous_external_auth_pool(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "pool.detect_nonhomogeneous_external_auth" }, ref)
        end
      end
    end
  end
end
