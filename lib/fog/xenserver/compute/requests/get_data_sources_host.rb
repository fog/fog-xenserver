module Fog
  module XenServer
    class Compute
      class Real
        def get_data_sources_host(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.get_data_sources" }, ref)
        end
      end
    end
  end
end
