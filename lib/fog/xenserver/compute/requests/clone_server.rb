module Fog
  module XenServer
    class Compute
      class Real
        def clone_server(ref, new_name)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.clone" }, ref, new_name)
        end

        alias_method :clone_vm, :clone_server
      end
    end
  end
end
