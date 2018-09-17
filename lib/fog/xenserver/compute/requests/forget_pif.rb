module Fog
  module XenServer
    class Compute
      class Real
        def forget_pif(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "PIF.forget" }, ref)
        end
      end
    end
  end
end
