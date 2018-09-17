module Fog
  module XenServer
    class Compute
      class Real
        def assert_can_host_ha_statefile_sr(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "SR.assert_can_host_ha_statefile" }, ref)
        end
      end
    end
  end
end
