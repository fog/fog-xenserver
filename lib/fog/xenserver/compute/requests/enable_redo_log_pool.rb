module Fog
  module XenServer
    class Compute
      class Real
        def enable_redo_log_pool(sr)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "pool.enable_redo_log" }, sr)
        end
      end
    end
  end
end
