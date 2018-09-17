module Fog
  module XenServer
    class Compute
      class Real
        def assert_attachable_vbd(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VBD.assert_attachable" }, ref)
        end
      end
    end
  end
end
