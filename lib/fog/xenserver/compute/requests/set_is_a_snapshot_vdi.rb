module Fog
  module XenServer
    class Compute
      class Real
        def set_is_a_snapshot_vdi(ref, value)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VDI.set_is_a_snapshot" }, ref, value)
        end
      end
    end
  end
end
