module Fog
  module XenServer
    class Compute
      class Real
        def sync_data_host(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.sync_data" }, ref)
        end
      end
    end
  end
end
