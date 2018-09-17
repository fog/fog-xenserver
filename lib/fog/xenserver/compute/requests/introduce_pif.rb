module Fog
  module XenServer
    class Compute
      class Real
        def introduce_pif(host, mac, device)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "PIF.introduce" }, host, mac, device)
        end
      end
    end
  end
end
