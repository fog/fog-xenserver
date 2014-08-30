module Fog
  module Compute
    class XenServer
      class Real
        # Create a Network
        #
        # @see http://docs.vmd.citrix.com/XenServer/6.0.0/1.0/en_gb/api/?c=network
        #
        def create_network(config = {}, extra_params = {})
          @connection.request({:parser => Fog::Parsers::XenServer::Base.new, :method => 'network.create' }, config)
        end
      end
    end
  end
end