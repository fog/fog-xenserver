module Fog
  module XenServer
    class Compute
      class Real
        def apply_edition_pool(ref, edition)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "pool.apply_edition" }, ref, edition)
        end
      end
    end
  end
end
