module Fog
  module XenServer
    class Compute
      class Real
        def set_power_on_mode_host(ref, power_on_mode, power_on_config)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.set_power_on_mode" }, ref, power_on_mode, power_on_config)
        end
      end
    end
  end
end
