module Fog
  module XenServer
    class Compute
      class Real
        def set_memory_static_min_server(ref, value)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.set_memory_static_min" }, ref, value)
        end

        alias_method :set_memory_static_min_vm, :set_memory_static_min_server
      end
    end
  end
end
