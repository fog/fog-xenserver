module Fog
  module Compute
    class XenServer
      class Real
        def start_server(ref)
          start_vm(ref)
        end
      end
    end
  end
end