module Fog
  module XenServer
    class Compute
      class Real
        def enable_host(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.enable" }, ref)
        end
      end
    end
  end
end
