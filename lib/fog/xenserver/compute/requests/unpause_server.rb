module Fog
  module XenServer
    class Compute
      class Real
        def unpause_server(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.unpause" }, ref)
        end

        alias_method :unpause_vm, :unpause_server
      end
    end
  end
end
