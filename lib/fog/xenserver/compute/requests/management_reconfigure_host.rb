module Fog
  module XenServer
    class Compute
      class Real
        def management_reconfigure_host(pif)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.management_reconfigure" }, pif)
        end
      end
    end
  end
end
