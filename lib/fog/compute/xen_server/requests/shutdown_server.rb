module Fog
  module Compute
    class XenServer
      class Real
        def shutdown_server(ref)
          @connection.request({ :parser => Fog::Parsers::XenServer::Base.new, :method => 'VM.shutdown' }, ref)
        end

        alias_method :shutdown_vm, :shutdown_server
      end
    end
  end
end
