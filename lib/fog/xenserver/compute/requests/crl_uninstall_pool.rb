module Fog
  module XenServer
    class Compute
      class Real
        def crl_uninstall_pool(name)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "pool.crl_uninstall" }, name)
        end
      end
    end
  end
end
