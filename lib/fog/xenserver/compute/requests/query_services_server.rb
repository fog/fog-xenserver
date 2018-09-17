module Fog
  module XenServer
    class Compute
      class Real
        def query_services_server(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.query_services" }, ref)
        end

        alias_method :query_services_vm, :query_services_server
      end
    end
  end
end
