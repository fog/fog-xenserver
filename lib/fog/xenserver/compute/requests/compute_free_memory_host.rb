module Fog
  module XenServer
    class Compute
      class Real
        def compute_free_memory_host(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.compute_free_memory" }, ref)
        end
      end
    end
  end
end
