module Fog
  module XenServer
    class Compute
      class Real
        def recover_slaves_pool
          @connection.request(:parser => Fog::XenServer::Parsers::Base.new, :method => "pool.recover_slaves")
        end
      end
    end
  end
end
