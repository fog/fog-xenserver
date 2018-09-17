module Fog
  module XenServer
    class Compute
      class Real
        def set_primary_address_type_pif(ref, primary_address_type)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "PIF.set_primary_address_type" }, ref, primary_address_type)
        end
      end
    end
  end
end
