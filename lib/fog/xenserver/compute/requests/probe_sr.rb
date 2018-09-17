module Fog
  module XenServer
    class Compute
      class Real
        def probe_sr(host, device_config, type, sm_config)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "SR.probe" }, host, device_config, type, sm_config)
        end
      end
    end
  end
end
