module Fog
  module XenServer
    class Compute
      class Real
        def set_cpu_features_host(ref, features)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.set_cpu_features" }, ref, features)
        end
      end
    end
  end
end
