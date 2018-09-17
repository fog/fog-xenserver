module Fog
  module XenServer
    class Compute
      class Real
        def set_default_locking_mode_network(ref, network_default_locking_mode)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "network.set_default_locking_mode" }, ref, network_default_locking_mode)
        end
      end
    end
  end
end
