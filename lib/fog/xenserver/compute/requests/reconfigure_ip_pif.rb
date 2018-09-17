module Fog
  module XenServer
    class Compute
      class Real
        def reconfigure_ip_pif(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "PIF.reconfigure_ip" }, ref)
        end
      end
    end
  end
end
