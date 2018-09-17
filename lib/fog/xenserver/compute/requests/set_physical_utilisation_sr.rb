module Fog
  module XenServer
    class Compute
      class Real
        def set_physical_utilisation_sr(ref, value)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "SR.set_physical_utilisation" }, ref, value)
        end
      end
    end
  end
end
