module Fog
  module XenServer
    class Compute
      class Real
        def scan_sr(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "SR.scan" }, ref)
        end
      end
    end
  end
end
