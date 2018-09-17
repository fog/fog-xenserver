module Fog
  module XenServer
    class Compute
      class Real
        def open_database_vdi(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VDI.open_database" }, ref)
        end
      end
    end
  end
end
