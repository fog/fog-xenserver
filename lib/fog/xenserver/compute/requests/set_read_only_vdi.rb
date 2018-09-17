module Fog
  module XenServer
    class Compute
      class Real
        def set_read_only_vdi(ref, value)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VDI.set_read_only" }, ref, value)
        end
      end
    end
  end
end
