module Fog
  module XenServer
    class Compute
      class Real
        def get_servertime_host(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.get_servertime" }, ref)
        end
      end
    end
  end
end
