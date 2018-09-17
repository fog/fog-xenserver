module Fog
  module XenServer
    class Compute
      class Real
        def create_pbd(host_uuid, sr_uuid, device_config = {})
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "PBD.create" }, host_uuid, sr_uuid, device_config)
        end
      end
    end
  end
end
