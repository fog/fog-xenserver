module Fog
  module XenServer
    class Compute
      class Real
        def assert_supports_database_replication_sr(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "SR.assert_supports_database_replication" }, ref)
        end
      end
    end
  end
end
