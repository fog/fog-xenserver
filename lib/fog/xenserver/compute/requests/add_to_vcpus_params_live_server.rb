module Fog
  module XenServer
    class Compute
      class Real
        def add_to_vcpus_params_live_server(ref, key, value)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.add_to_VCPUs_params_live" }, ref, key, value)
        end

        alias_method :add_to_vcpus_params_live_vm, :add_to_vcpus_params_live_server
      end
    end
  end
end
