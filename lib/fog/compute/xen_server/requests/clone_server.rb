module Fog
  module Compute
    class XenServer
      class Real
        def clone_server(server_name, template_ref)
          if template_ref.kind_of? Fog::Compute::XenServer::Server
            template_ref = template_ref.reference
          end

          @connection.request({ :parser => Fog::Parsers::XenServer::Base.new, :method => 'VM.clone' },
                              template_ref, server_name)
        end
      end
    end
  end
end