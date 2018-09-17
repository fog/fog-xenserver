module Fog
  module XenServer
    class Compute
      class Real
        def send_debug_keys_host(ref, keys)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.send_debug_keys" }, ref, keys)
        end
      end
    end
  end
end
