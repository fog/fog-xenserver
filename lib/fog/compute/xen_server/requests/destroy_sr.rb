module Fog
  module Compute
    class XenServer
      class Real
        def destroy_sr(ref)
          @connection.request({ :parser => Fog::Parsers::XenServer::Base.new, :method => 'SR.destroy' }, ref)
        end
      end
    end
  end
end
