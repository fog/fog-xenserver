module Fog
  module XenServer
    class Compute
      class Real
        def snapshot_server(ref, new_name)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.snapshot" }, ref, new_name)
        end

        alias_method :snapshot_vm, :snapshot_server
      end
    end
  end
end
