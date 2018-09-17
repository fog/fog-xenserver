module Fog
  module XenServer
    class Compute
      class Real
        def update_sr(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "SR.update" }, ref)
        end
      end
    end
  end
end
