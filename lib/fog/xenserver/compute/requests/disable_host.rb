module Fog
  module XenServer
    class Compute
      class Real
        def disable_host(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.disable" }, ref)
        end
      end
    end
  end
end
