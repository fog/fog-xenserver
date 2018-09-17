module Fog
  module XenServer
    class Compute
      class Real
        def bugreport_upload_host(ref, url, options)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.bugreport_upload" }, ref, url, options)
        end
      end
    end
  end
end
