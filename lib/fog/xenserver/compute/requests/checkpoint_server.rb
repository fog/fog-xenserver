module Fog
  module XenServer
    class Compute
      class Real
        def checkpoint_server(ref, new_name)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.checkpoint" }, ref, new_name)
        end

        alias_method :checkpoint_vm, :checkpoint_server
      end
    end
  end
end
