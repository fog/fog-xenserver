module Fog
  module XenServer
    class Compute
      class Real
        def set_affinity_server(host_ref)
          @connection.request({:parser => Fog::XenServer::Parsers::Base.new, :method => "VM.set_affinity"}, host_ref)
        end

        alias_method :set_affinity_vm, :set_affinity_server
      end
    end
  end
end