module Fog
  module XenServer
    class Compute
      class Real
        def copy_vdi(ref, sr)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VDI.copy" }, ref, sr)
        end
      end
    end
  end
end
