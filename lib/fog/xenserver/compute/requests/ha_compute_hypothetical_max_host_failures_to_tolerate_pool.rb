module Fog
  module XenServer
    class Compute
      class Real
        def ha_compute_hypothetical_max_host_failures_to_tolerate_pool(configuration)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "pool.ha_compute_hypothetical_max_host_failures_to_tolerate" }, configuration)
        end
      end
    end
  end
end
