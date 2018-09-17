module Fog
  module XenServer
    class Compute
      class Real
        def emergency_ha_disable_host
          @connection.request(:parser => Fog::XenServer::Parsers::Base.new, :method => "host.emergency_ha_disable")
        end
      end
    end
  end
end
