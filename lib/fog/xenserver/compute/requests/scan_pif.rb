module Fog
  module XenServer
    class Compute
      class Real
        def scan_pif(host)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "PIF.scan" }, host)
        end
      end
    end
  end
end
