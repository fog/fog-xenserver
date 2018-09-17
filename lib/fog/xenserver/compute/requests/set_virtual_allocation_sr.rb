module Fog
  module XenServer
    class Compute
      class Real
        def set_virtual_allocation_sr(ref, value)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "SR.set_virtual_allocation" }, ref, value)
        end
      end
    end
  end
end
