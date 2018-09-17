module Fog
  module XenServer
    class Compute
      class Real
        def pool_migrate_server(ref, host, option)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.pool_migrate" }, ref, host, option)
        end

        alias_method :pool_migrate_vm, :pool_migrate_server
      end
    end
  end
end
