module Fog
  module XenServer
    class Compute
      class Real
        def create_network(config = {}, extra_params = {})
          @connection.request({:parser => Fog::XenServer::Parsers::Base.new, :method => "network.create" }, config)
        end
      end
    end
  end
end