module Fog
  module XenServer
    class Compute
      class Real
        def resume_on_server(ref, host, start_paused, force)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.resume_on" }, ref, host, start_paused, force)
        end

        alias_method :resume_on_vm, :resume_on_server
      end
    end
  end
end
