module Fog
  module XenServer
    class Compute
      class Real
        def set_allow_caching_vdi(ref, value)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VDI.set_allow_caching" }, ref, value)
        end
      end
    end
  end
end
