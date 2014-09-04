module Fog
  module Compute
    class XenServer
      class Real
        def clone_server(server_name, template_ref)
          @connection.request({ :parser => Fog::Parsers::XenServer::Base.new, :method => 'VM.clone' },
                              template_ref, server_name)
        end
      end
    end
  end
end