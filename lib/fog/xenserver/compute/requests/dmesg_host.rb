module Fog
  module XenServer
    class Compute
      class Real
        def dmesg_host(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.dmesg" }, ref)
        end
      end
    end
  end
end
