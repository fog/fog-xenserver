module Fog
  module XenServer
    class Compute
      class Real
        def set_hvm_shadow_multiplier_server(ref, value)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.set_HVM_shadow_multiplier" }, ref, value)
        end

        alias_method :set_hvm_shadow_multiplier_vm, :set_hvm_shadow_multiplier_server
      end
    end
  end
end
