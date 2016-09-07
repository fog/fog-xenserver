module Fog
  module Compute
    class XenServer
      class Real
        def add_tag(ref, tag)
          @connection.request({ :parser => Fog::Parsers::XenServer::Base.new, :method => "VM.add_tags" }, ref, tag)
        end
      end
    end
  end
end