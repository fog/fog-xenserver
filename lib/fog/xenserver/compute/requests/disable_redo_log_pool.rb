module Fog
  module XenServer
    class Compute
      class Real
        def disable_redo_log_pool
          @connection.request(:parser => Fog::XenServer::Parsers::Base.new, :method => "pool.disable_redo_log")
        end
      end
    end
  end
end
