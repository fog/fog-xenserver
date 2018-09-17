module Fog
  module XenServer
    class Compute
      class Real
        def insert_vbd(ref, vdi)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VBD.insert" }, ref, vdi)
        end
      end
    end
  end
end
