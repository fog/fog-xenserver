module Fog
  module XenServer
    class Compute
      class Real
        def forget_sr(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "SR.forget" }, ref)
        end
      end
    end
  end
end
