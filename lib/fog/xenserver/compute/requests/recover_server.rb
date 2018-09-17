module Fog
  module XenServer
    class Compute
      class Real
        def recover_server(ref, session_to, force)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.recover" }, ref, session_to, force)
        end

        alias_method :recover_vm, :recover_server
      end
    end
  end
end
