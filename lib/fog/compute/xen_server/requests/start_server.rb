module Fog
  module Compute
    class XenServer
      class Real
        def start_server(ref)
          server = servers.get(ref)
          return false if server.running?
          @connection.request({:parser => Fog::Parsers::XenServer::Base.new, :method => 'VM.start'}, ref, false, false)
          true
        end

        alias_method :start_vm, :start_server
      end
    end
  end
end