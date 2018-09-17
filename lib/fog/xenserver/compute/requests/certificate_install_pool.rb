module Fog
  module XenServer
    class Compute
      class Real
        def certificate_install_pool(name, cert)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "pool.certificate_install" }, name, cert)
        end
      end
    end
  end
end
