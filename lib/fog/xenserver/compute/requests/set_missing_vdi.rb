module Fog
  module XenServer
    class Compute
      class Real
        def set_missing_vdi(ref, value)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VDI.set_missing" }, ref, value)
        end
      end
    end
  end
end
