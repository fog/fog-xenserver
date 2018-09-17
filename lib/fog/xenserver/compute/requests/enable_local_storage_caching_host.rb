module Fog
  module XenServer
    class Compute
      class Real
        def enable_local_storage_caching_host(ref, sr)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.enable_local_storage_caching" }, ref, sr)
        end
      end
    end
  end
end
