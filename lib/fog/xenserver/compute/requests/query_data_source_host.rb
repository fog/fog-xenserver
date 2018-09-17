module Fog
  module XenServer
    class Compute
      class Real
        def query_data_source_host(ref, data_source)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.query_data_source" }, ref, data_source)
        end
      end
    end
  end
end
