module Fog
  module Compute
    class XenServer
      class Real
        def start_server(ref)
          start_vm(ref)
        end
      end

      class Mock
        def start_server( vm_ref )
          Fog::Mock.not_implemented
        end
      end
    end
  end
end