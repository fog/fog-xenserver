module Fog
  module XenServer
    class Compute
      class Real
        def apply_edition_host(ref, edition, force)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.apply_edition" }, ref, edition, force)
        end
      end
    end
  end
end
