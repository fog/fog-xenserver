module Fog
  module XenServer
    class Compute
      class Real
        def copy_server(ref, name, sr)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.copy" }, ref, name, sr)
        end

        alias_method :copy_vm, :copy_server
      end
    end
  end
end
