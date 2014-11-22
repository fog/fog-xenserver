module Fog
  module Compute
    class XenServer
      class Real
        def destroy_host(ref)
          @connection.request({ :parser => Fog::Parsers::XenServer::Base.new, :method => 'host.destroy' }, ref)
        end
      end
    end
  end
end
