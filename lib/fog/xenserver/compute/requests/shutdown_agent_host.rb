module Fog
  module XenServer
    class Compute
      class Real
        def shutdown_agent_host
          @connection.request(:parser => Fog::XenServer::Parsers::Base.new, :method => "host.shutdown_agent")
        end
      end
    end
  end
end
