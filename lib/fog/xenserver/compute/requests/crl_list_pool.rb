module Fog
  module XenServer
    class Compute
      class Real
        def crl_list_pool
          @connection.request(:parser => Fog::XenServer::Parsers::Base.new, :method => "pool.crl_list")
        end
      end
    end
  end
end
