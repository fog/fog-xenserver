module Fog
  module XenServer
    class Compute
      class Real
        def declare_dead_host(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.declare_dead" }, ref)
        end
      end
    end
  end
end
