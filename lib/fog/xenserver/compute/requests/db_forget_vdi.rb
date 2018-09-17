module Fog
  module XenServer
    class Compute
      class Real
        def db_forget_vdi(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VDI.db_forget" }, ref)
        end
      end
    end
  end
end
