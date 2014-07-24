module Fog
  module Compute
    class XenServer
      class Real
        def destroy_server(ref , extra_args = {})
          server = @connection.servers.get(ref)
          server.hard_shutdown
          server.vbds.each do |vbd|
            if vbd.type == "Disk"
              vbd.unplug \
                if vbd.allowed_operations.include?("unplug")
              vbd.vdi.destroy \
                if vbd.vdi.allowed_operations.include?("destroy")
            end
          end
          @connection.request({:parser => Fog::Parsers::XenServer::Base.new, :method => 'VM.destroy'}, ref)
          true
        end

        alias_method :destroy_vm, :destroy_server
      end
    end
  end
end