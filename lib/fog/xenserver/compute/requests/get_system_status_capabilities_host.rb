module Fog
  module XenServer
    class Compute
      class Real
        def get_system_status_capabilities_host(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.get_system_status_capabilities" }, ref)
        end
      end
    end
  end
end
