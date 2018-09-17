module Fog
  module XenServer
    class Compute
      class Real
        def migrate_receive_host(ref, network, options)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.migrate_receive" }, ref, network, options)
        end
      end
    end
  end
end
