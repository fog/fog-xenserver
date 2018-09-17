module Fog
  module XenServer
    class Compute
      class Real
        def clean_shutdown_server(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.clean_shutdown" }, ref)
        end

        alias_method :clean_shutdown_vm, :clean_shutdown_server
      end
    end
  end
end
