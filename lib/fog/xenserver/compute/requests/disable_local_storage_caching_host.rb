module Fog
  module XenServer
    class Compute
      class Real
        def disable_local_storage_caching_host(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.disable_local_storage_caching" }, ref)
        end
      end
    end
  end
end
