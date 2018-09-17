module Fog
  module XenServer
    class Compute
      class Real
        def create_vif(config = {}, extra_params = {})
          @connection.request({:parser => Fog::XenServer::Parsers::Base.new, :method => "VIF.create"}, config )
        end
      end
    end
  end
end