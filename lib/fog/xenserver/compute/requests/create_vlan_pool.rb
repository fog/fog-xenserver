module Fog
  module XenServer
    class Compute
      class Real
        def create_vlan_pool(device, network, vlan)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "pool.create_VLAN" }, device, network, vlan)
        end
      end
    end
  end
end
