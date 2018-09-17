module Fog
  module XenServer
    class Compute
      class Real
        def assert_can_boot_here_server(ref, host)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.assert_can_boot_here" }, ref, host)
        end

        alias_method :assert_can_boot_here_vm, :assert_can_boot_here_server
      end
    end
  end
end
