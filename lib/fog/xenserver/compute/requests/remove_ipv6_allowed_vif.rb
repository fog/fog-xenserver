module Fog
  module XenServer
    class Compute
      class Real
        def remove_ipv6_allowed_vif(ref, value)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VIF.remove_ipv6_allowed" }, ref, value)
        end
      end
    end
  end
end
