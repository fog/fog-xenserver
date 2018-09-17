module Fog
  module XenServer
    class Compute
      class Real
        def revert_to_server(snapshot_ref, extra_args = {})
          @connection.request({:parser => Fog::XenServer::Parsers::Base.new, :method => "VM.revert"}, snapshot_ref)
        end

        alias_method :revert_to_vm, :revert_to_server
      end
    end
  end
end