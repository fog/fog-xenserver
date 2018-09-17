module Fog
  module XenServer
    class Compute
      class Real
        def set_vcpus_number_live_server(ref, nvcpu)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.set_VCPUs_number_live" }, ref, nvcpu)
        end

        alias_method :set_vcpus_number_live_vm, :set_vcpus_number_live_server
      end
    end
  end
end
