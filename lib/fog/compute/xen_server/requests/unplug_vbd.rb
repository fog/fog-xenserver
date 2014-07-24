module Fog
  module Compute
    class XenServer
      class Real
        def unplug_vbd( vbd_ref, extra_args = {})
          @connection.request({:parser => Fog::Parsers::XenServer::Base.new, :method => 'VBD.unplug'}, vbd_ref)
        end

        def unplug_force_vbd(ref, extra_args = {})
          @connection.request({:parser => Fog::Parsers::XenServer::Base.new, :method => 'VBD.unplug_force'}, ref)
        end
      end
    end
  end
end