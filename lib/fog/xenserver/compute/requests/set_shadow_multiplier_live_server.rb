module Fog
  module XenServer
    class Compute
      class Real
        def set_shadow_multiplier_live_server(ref, multiplier)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.set_shadow_multiplier_live" }, ref, multiplier)
        end

        alias_method :set_shadow_multiplier_live_vm, :set_shadow_multiplier_live_server
      end
    end
  end
end
