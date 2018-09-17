module Fog
  module XenServer
    class Compute
      class Real
        def list_methods_host
          @connection.request(:parser => Fog::XenServer::Parsers::Base.new, :method => "host.list_methods")
        end
      end
    end
  end
end
