module Fog
  module XenServer
    class Compute
      class Real
        def create_vbd(config = {}, extra_params = {})
          @connection.request({:parser => Fog::XenServer::Parsers::Base.new, :method => "VBD.create"}, config)
        end
      end
    end
  end
end