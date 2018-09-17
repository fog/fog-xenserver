module Fog
  module XenServer
    class Compute
      class Real
        def certificate_sync_pool
          @connection.request(:parser => Fog::XenServer::Parsers::Base.new, :method => "pool.certificate_sync")
        end
      end
    end
  end
end
