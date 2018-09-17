module Fog
  module XenServer
    class Compute
      class Real
        def set_sharable_vdi(ref, value)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VDI.set_sharable" }, ref, value)
        end
      end
    end
  end
end
