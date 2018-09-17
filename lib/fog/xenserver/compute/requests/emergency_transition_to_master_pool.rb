module Fog
  module XenServer
    class Compute
      class Real
        def emergency_transition_to_master_pool
          @connection.request(:parser => Fog::XenServer::Parsers::Base.new, :method => "pool.emergency_transition_to_master")
        end
      end
    end
  end
end
