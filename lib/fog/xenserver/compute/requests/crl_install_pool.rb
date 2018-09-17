module Fog
  module XenServer
    class Compute
      class Real
        def crl_install_pool(name, cert)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "pool.crl_install" }, name, cert)
        end
      end
    end
  end
end
