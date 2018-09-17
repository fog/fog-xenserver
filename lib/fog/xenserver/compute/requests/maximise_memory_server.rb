module Fog
  module XenServer
    class Compute
      class Real
        def maximise_memory_server(ref, total, approximate)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.maximise_memory" }, ref, total, approximate)
        end

        alias_method :maximise_memory_vm, :maximise_memory_server
      end
    end
  end
end
