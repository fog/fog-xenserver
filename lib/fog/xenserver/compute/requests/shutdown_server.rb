module Fog
  module XenServer
    class Compute
      class Real
        def shutdown_server(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.shutdown" }, ref)
        end

        alias_method :shutdown_vm, :shutdown_server
      end
    end
  end
end
