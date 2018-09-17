module Fog
  module XenServer
    class Compute
      class Real
        def get_supported_types_sr
          @connection.request(:parser => Fog::XenServer::Parsers::Base.new, :method => "SR.get_supported_types")
        end
      end
    end
  end
end
