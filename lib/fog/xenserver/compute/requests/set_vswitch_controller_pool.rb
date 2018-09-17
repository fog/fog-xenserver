module Fog
  module XenServer
    class Compute
      class Real
        def set_vswitch_controller_pool(address)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "pool.set_vswitch_controller" }, address)
        end
      end
    end
  end
end
