module Fog
  module XenServer
    class Compute
      class Real
        def suspend_server(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.suspend" }, ref)
        end

        alias_method :suspend_vm, :suspend_server
      end
    end
  end
end
