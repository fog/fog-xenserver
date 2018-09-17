module Fog
  module XenServer
    class Compute
      class Real
        def certificate_uninstall_pool(string)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "pool.certificate_uninstall" }, string)
        end
      end
    end
  end
end
