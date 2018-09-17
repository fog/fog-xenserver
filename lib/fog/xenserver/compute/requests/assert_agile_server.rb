module Fog
  module XenServer
    class Compute
      class Real
        def assert_agile_server(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.assert_agile" }, ref)
        end

        alias_method :assert_agile_vm, :assert_agile_server
      end
    end
  end
end
