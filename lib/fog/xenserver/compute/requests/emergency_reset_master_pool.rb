module Fog
  module XenServer
    class Compute
      class Real
        def emergency_reset_master_pool(master_address)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "pool.emergency_reset_master" }, master_address)
        end
      end
    end
  end
end
