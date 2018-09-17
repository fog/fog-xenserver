module Fog
  module XenServer
    class Compute
      class Real
        def pause_server(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.pause" }, ref)
        end

        alias_method :pause_vm, :pause_server
      end
    end
  end
end
