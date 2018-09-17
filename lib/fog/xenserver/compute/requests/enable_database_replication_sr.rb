module Fog
  module XenServer
    class Compute
      class Real
        def enable_database_replication_sr(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "SR.enable_database_replication" }, ref)
        end
      end
    end
  end
end
