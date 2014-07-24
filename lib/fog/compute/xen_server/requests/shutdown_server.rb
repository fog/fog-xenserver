module Fog
  module Compute
    class XenServer
      class Real
        def shutdown_server(ref, stype = 'clean')
          server = @connection.servers.get(ref)
          return false unless server.running?
          @connection.request({:parser => Fog::Parsers::XenServer::Base.new, :method => "VM.#{stype}_shutdown"}, ref)
          server.wait_for { power_state == 'Halted' }
          true
        end

        alias_method :shutdown_vm, :shutdown_server

        def hard_shutdown_server(ref)
          shutdown_server(ref, 'hard')
        end

        alias_method :hard_shutdown_vm, :hard_shutdown_server

        def clean_shutdown_server(ref)
          shutdown_server(ref, 'clean')
        end

        alias_method :clean_shutdown_vm, :clean_shutdown_server
      end
    end
  end
end