module Fog
  module XenServer
    class Compute
      class Real
        def create_server(config = {}, extra_params = {})
          @connection.request({:parser => Fog::XenServer::Parsers::Base.new, :method => "VM.create" }, config)
        end

        alias_method :create_vm, :create_server
      end
    end
  end
end