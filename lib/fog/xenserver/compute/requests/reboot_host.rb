module Fog
  module XenServer
    class Compute
      class Real
        def reboot_host(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.reboot" }, ref)
        end
      end
    end
  end
end
