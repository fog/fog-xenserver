module Fog
  module Compute
    class XenServer
      class Real
        # http://bit.ly/8ZPyCN
        # VM.start( session, VM_ref, start_paused, force)
        def start_vm(ref)
          server = @connection.servers.get(ref)
          return false if server.running?
          @connection.request({:parser => Fog::Parsers::XenServer::Base.new, :method => 'VM.start'}, ref, false, false)
          true
        end
      end
    end
  end
end