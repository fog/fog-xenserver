module Fog
  module XenServer
    class Compute
      class Real
        def compute_memory_overhead_host(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.compute_memory_overhead" }, ref)
        end
      end
    end
  end
end
