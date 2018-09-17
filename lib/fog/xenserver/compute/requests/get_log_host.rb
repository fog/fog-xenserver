module Fog
  module XenServer
    class Compute
      class Real
        def get_log_host(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.get_log" }, ref)
        end
      end
    end
  end
end
