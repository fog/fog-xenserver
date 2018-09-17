module Fog
  module XenServer
    class Compute
      class Real
        def set_memory_limits_server(ref, static_min, static_max, dynamic_min, dynamic_max)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.set_memory_limits" }, ref, static_min, static_max, dynamic_min, dynamic_max)
        end

        alias_method :set_memory_limits_vm, :set_memory_limits_server
      end
    end
  end
end
