module Fog
  module XenServer
    class Compute
      class Real
        def set_order_server(ref, value)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.set_order" }, ref, value)
        end

        alias_method :set_order_vm, :set_order_server
      end
    end
  end
end
