module Fog
  module XenServer
    class Compute
      class Real
        def call_plugin_host(ref, plugin, fn, args)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "host.call_plugin" }, ref, plugin, fn, args)
        end
      end
    end
  end
end
