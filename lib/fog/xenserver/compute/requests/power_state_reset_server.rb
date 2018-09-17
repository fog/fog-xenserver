module Fog
  module XenServer
    class Compute
      class Real
        def power_state_reset_server(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.power_state_reset" }, ref)
        end

        alias_method :power_state_reset_vm, :power_state_reset_server
      end
    end
  end
end
