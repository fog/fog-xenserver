module Fog
  module XenServer
    class Compute
      class Real
        def management_disable_host
          @connection.request(:parser => Fog::XenServer::Parsers::Base.new, :method => "host.management_disable")
        end
      end
    end
  end
end
