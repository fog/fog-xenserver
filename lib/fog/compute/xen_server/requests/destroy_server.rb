module Fog
  module Compute
    class XenServer
      class Real
        def destroy_server(ref , extra_args = {})
          @connection.request({:parser => Fog::Parsers::XenServer::Base.new, :method => 'VM.destroy'}, ref)
          true
        end

        alias_method :destroy_vm, :destroy_server
      end
    end
  end
end