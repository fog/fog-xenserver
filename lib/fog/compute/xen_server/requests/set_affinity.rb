module Fog
  module Compute
    class XenServer
      class Real
        def set_affinity( host_ref )
          @connection.request({:parser => Fog::Parsers::XenServer::Base.new, :method => 'VM.set_affinity'}, host_ref)
        end
      end
    end
  end
end