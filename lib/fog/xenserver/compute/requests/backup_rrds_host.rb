module Fog
  module XenServer
    class Compute
      class Real
        def backup_rrds_host(ref, delay)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.backup_rrds" }, ref, delay)
        end
      end
    end
  end
end
