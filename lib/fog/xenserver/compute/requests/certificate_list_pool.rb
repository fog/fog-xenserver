module Fog
  module XenServer
    class Compute
      class Real
        def certificate_list_pool
          @connection.request(:parser => Fog::XenServer::Parsers::Base.new, :method => "pool.certificate_list")
        end
      end
    end
  end
end
