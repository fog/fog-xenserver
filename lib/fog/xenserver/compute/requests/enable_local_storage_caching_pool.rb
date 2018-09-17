module Fog
  module XenServer
    class Compute
      class Real
        def enable_local_storage_caching_pool(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "pool.enable_local_storage_caching" }, ref)
        end
      end
    end
  end
end
