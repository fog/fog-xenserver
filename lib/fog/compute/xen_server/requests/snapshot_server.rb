module Fog
  module Compute
    class XenServer
      class Real
        def snapshot_server(vm_ref , name, extra_args = {})
          @connection.request({:parser => Fog::Parsers::XenServer::Base.new, :method => 'VM.snapshot'}, vm_ref, name)
        end

        alias_method :snapshot_vm, :snapshot_server
      end
    end
  end
end