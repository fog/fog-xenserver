module Fog
  module XenServer
    class Compute
      class Real
        def set_ha_host_failures_to_tolerate_pool(ref, value)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "pool.set_ha_host_failures_to_tolerate" }, ref, value)
        end
      end
    end
  end
end
