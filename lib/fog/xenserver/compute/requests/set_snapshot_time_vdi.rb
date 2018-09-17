module Fog
  module XenServer
    class Compute
      class Real
        def set_snapshot_time_vdi(ref, datetime)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VDI.set_snapshot_time" }, ref, datetime)
        end
      end
    end
  end
end
