module Fog
  module XenServer
    class Compute
      class Real
        def get_license_state_pool(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "pool.get_license_state" }, ref)
        end
      end
    end
  end
end
