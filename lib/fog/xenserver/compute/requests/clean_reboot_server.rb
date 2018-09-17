module Fog
  module XenServer
    class Compute
      class Real
        def clean_reboot_server(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.clean_reboot" }, ref)
        end

        alias_method :clean_reboot_vm, :clean_reboot_server
      end
    end
  end
end
