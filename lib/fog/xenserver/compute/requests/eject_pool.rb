module Fog
  module XenServer
    class Compute
      class Real
        def eject_pool(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "pool.eject" }, ref)
        end
      end
    end
  end
end
