module Fog
  module XenServer
    class Compute
      class Real
        def local_management_reconfigure_host(interface)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.local_management_reconfigure" }, interface)
        end
      end
    end
  end
end
