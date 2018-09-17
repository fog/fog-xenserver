module Fog
  module XenServer
    class Compute
      class Real
        def set_suspend_vdi_server(ref, value)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.set_suspend_VDI" }, ref, value)
        end

        alias_method :set_suspend_vdi_vm, :set_suspend_vdi_server
      end
    end
  end
end
