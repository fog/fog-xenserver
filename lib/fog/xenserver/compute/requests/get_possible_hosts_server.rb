module Fog
  module XenServer
    class Compute
      class Real
        def get_possible_hosts_server(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.get_possible_hosts" }, ref)
        end

        alias_method :get_possible_hosts_vm, :get_possible_hosts_server
      end
    end
  end
end
