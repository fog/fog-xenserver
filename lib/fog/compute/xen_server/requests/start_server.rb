module Fog
  module Compute
    class XenServer
      class Real
        def start_server(ref)
          @connection.request({:parser => Fog::Parsers::XenServer::Base.new, :method => 'VM.start'}, ref, false, false)
        end

        alias_method :start_vm, :start_server
      end
    end
  end
end