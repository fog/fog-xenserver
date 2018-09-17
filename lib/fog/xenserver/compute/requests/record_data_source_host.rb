module Fog
  module XenServer
    class Compute
      class Real
        def record_data_source_host(ref, data_source)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.record_data_source" }, ref, data_source)
        end
      end
    end
  end
end
