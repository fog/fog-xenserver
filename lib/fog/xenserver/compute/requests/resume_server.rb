module Fog
  module XenServer
    class Compute
      class Real
        def resume_server(ref, start_paused, force)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.resume" }, ref, start_paused, force)
        end

        alias_method :resume_vm, :resume_server
      end
    end
  end
end
