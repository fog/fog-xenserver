module Fog
  module Compute
    class XenServer
      class Real
        def snapshot_revert_server(snapshot_ref, extra_args = {})
          @connection.request({:parser => Fog::Parsers::XenServer::Base.new, :method => 'VM.revert'}, snapshot_ref)
        end

        alias_method :snapshot_revert_vm, :snapshot_revert_server

        def snapshot_server(snapshot_ref, extra_args = {})
          Fog::Logger.deprecation 'This method is DEPRECATED. Use #snapshot_revert_server instead.'
          snapshot_revert_server(snapshot_ref, extra_args = {})
        end
      end

      class Mock
        def snapshot_revert()
          Fog::Mock.not_implemented
        end
      end
    end
  end
end