module Fog
  module XenServer
    class Compute
      class Real
        def send_sysrq_server(ref, key)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.send_sysrq" }, ref, key)
        end

        alias_method :send_sysrq_vm, :send_sysrq_server
      end
    end
  end
end
