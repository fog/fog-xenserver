module Fog
  module XenServer
    class Compute
      class Real
        def set_shared_sr(ref, value)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "SR.set_shared" }, ref, value)
        end
      end
    end
  end
end
