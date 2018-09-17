module Fog
  module XenServer
    class Compute
      class Real
        def get_management_interface_host(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.get_management_interface" }, ref)
        end
      end
    end
  end
end
