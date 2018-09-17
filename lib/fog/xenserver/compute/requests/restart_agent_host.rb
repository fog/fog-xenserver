module Fog
  module XenServer
    class Compute
      class Real
        def restart_agent_host(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.restart_agent" }, ref)
        end
      end
    end
  end
end
