module Fog
  module XenServer
    class Compute
      class Real
        def disable_ha_pool
          @connection.request(:parser => Fog::XenServer::Parsers::Base.new, :method => "pool.disable_ha")
        end
      end
    end
  end
end
