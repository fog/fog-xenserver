module Fog
  module Compute
    class XenServer
      class Real
        def remove_tag(ref, tag)
          @connection.request({ :parser => Fog::Parsers::XenServer::Base.new, :method => "VM.remove_tags" }, ref, tag)
        end
      end
    end
  end
end