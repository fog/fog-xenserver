module Fog
  module XenServer
    class Compute
      class Real
        def provision_server(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.provision" }, ref)
        end

        alias_method :provision_vm, :provision_server
      end
    end
  end
end
