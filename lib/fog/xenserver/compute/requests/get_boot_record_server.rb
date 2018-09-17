module Fog
  module XenServer
    class Compute
      class Real
        def get_boot_record_server(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.get_boot_record" }, ref)
        end

        alias_method :get_boot_record_vm, :get_boot_record_server
      end
    end
  end
end
