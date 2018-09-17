module Fog
  module XenServer
    class Compute
      class Real
        def reconfigure_ipv6_pif(ref, ipv6_configuration_mode, ipv6, gateway, dns)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "PIF.reconfigure_ipv6" }, ref, ipv6_configuration_mode, ipv6, gateway, dns)
        end
      end
    end
  end
end
