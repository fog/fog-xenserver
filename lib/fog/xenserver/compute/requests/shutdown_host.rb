module Fog
  module XenServer
    class Compute
      class Real
        def shutdown_host(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.shutdown" }, ref)
        end
      end
    end
  end
end
