module Fog
  module XenServer
    class Compute
      class Real
        def sync_database_pool
          @connection.request(:parser => Fog::XenServer::Parsers::Base.new, :method => "pool.sync_database")
        end
      end
    end
  end
end
