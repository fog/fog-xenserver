module Fog
  module XenServer
    class Compute
      class Real
        def ha_compute_max_host_failures_to_tolerate_pool
          @connection.request(:parser => Fog::XenServer::Parsers::Base.new, :method => "pool.ha_compute_max_host_failures_to_tolerate")
        end
      end
    end
  end
end
