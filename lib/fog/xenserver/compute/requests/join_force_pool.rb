module Fog
  module XenServer
    class Compute
      class Real
        def join_force_pool(master_address, master_username, master_password)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "pool.join_force" }, master_address, master_username, master_password)
        end
      end
    end
  end
end
