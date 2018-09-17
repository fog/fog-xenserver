module Fog
  module XenServer
    class Compute
      class Real
        def get_server_localtime_host(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.get_server_localtime" }, ref)
        end
      end
    end
  end
end
