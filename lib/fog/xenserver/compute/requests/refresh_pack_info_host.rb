module Fog
  module XenServer
    class Compute
      class Real
        def refresh_pack_info_host(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.refresh_pack_info" }, ref)
        end
      end
    end
  end
end
