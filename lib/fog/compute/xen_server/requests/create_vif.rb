module Fog
  module Compute
    class XenServer
      class Real
        def create_vif(config = {}, extra_params = {})
          if config[:device].to_i == -1
            server = servers.get(config[:VM])
            conf[:device] = (server.vifs.map { |vif| vif.device.to_i } << 0).max.to_s
          end
          @connection.request({:parser => Fog::Parsers::XenServer::Base.new, :method => 'VIF.create'}, config )
        end
      end
    end
  end
end