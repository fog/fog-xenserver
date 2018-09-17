module Fog
  module XenServer
    class Compute
      class Real
        def get_vms_which_prevent_evacuation_host(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.get_vms_which_prevent_evacuation" }, ref)
        end
      end
    end
  end
end
