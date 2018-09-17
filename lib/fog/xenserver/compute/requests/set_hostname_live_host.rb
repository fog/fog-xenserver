module Fog
  module XenServer
    class Compute
      class Real
        def set_hostname_live_host(ref, hostname)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.set_hostname_live" }, ref, hostname)
        end
      end
    end
  end
end
