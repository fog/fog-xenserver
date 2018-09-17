module Fog
  module XenServer
    class Compute
      class Real
        def power_on_host(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.power_on" }, ref)
        end
      end
    end
  end
end
