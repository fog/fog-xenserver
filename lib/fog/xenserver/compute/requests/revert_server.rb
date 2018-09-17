module Fog
  module XenServer
    class Compute
      class Real
        def revert_server(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.revert" }, ref)
        end

        alias_method :revert_vm, :revert_server
      end
    end
  end
end
