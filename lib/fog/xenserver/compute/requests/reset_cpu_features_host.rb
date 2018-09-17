module Fog
  module XenServer
    class Compute
      class Real
        def reset_cpu_features_host(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.reset_cpu_features" }, ref)
        end
      end
    end
  end
end
