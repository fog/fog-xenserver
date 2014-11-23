module Fog
  module Compute
    class XenServer
      class Real
        def forget_pif(ref)
          @connection.request({ :parser => Fog::Parsers::XenServer::Base.new, :method => 'pif.forget' }, ref)
        end
      end
    end
  end
end
