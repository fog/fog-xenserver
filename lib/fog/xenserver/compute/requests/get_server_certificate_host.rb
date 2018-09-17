module Fog
  module XenServer
    class Compute
      class Real
        def get_server_certificate_host(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.get_server_certificate" }, ref)
        end
      end
    end
  end
end
