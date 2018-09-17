module Fog
  module XenServer
    class Compute
      class Real
        def dmesg_clear_host(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.dmesg_clear" }, ref)
        end
      end
    end
  end
end
