module Fog
  module XenServer
    class Compute
      class Real
        def create_vdi(config = {}, extra_params = {})
          @connection.request({:parser => Fog::XenServer::Parsers::Base.new, :method => "VDI.create"}, config)
        end
      end
    end
  end
end