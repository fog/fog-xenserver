module Fog
  module XenServer
    class Compute
      class Real
        def designate_new_master_pool(host)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "pool.designate_new_master" }, host)
        end
      end
    end
  end
end
