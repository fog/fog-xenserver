module Fog
  module XenServer
    class Compute
      class Real
        def forget_vdi(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VDI.forget" }, ref)
        end
      end
    end
  end
end
