module Fog
  module XenServer
    class Compute
      class Real
        def set_memory_dynamic_max_server(ref, value)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.set_memory_dynamic_max" }, ref, value)
        end

        alias_method :set_memory_dynamic_max_vm, :set_memory_dynamic_max_server
      end
    end
  end
end
