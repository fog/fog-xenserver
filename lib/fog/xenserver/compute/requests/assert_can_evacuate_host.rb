module Fog
  module XenServer
    class Compute
      class Real
        def assert_can_evacuate_host(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.assert_can_evacuate" }, ref)
        end
      end
    end
  end
end
