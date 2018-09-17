module Fog
  module XenServer
    class Compute
      class Real
        def evacuate_host(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.evacuate" }, ref)
        end
      end
    end
  end
end
