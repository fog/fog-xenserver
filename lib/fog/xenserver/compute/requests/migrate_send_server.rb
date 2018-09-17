module Fog
  module XenServer
    class Compute
      class Real
        def migrate_send_server(ref, dest, live, vdi_map, vif_map, options)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.migrate_send" }, ref, dest, live, vdi_map, vif_map, options)
        end

        alias_method :migrate_send_vm, :migrate_send_server
      end
    end
  end
end
