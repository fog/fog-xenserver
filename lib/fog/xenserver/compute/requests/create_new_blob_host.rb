module Fog
  module XenServer
    class Compute
      class Real
        def create_new_blob_host(ref, name, mime_type, public)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.create_new_blob" }, ref, name, mime_type, public)
        end
      end
    end
  end
end
