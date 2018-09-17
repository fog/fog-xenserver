module Fog
  module XenServer
    class Compute
      class Real
        def send_trigger_server(ref, trigger)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.send_trigger" }, ref, trigger)
        end

        alias_method :send_trigger_vm, :send_trigger_server
      end
    end
  end
end
