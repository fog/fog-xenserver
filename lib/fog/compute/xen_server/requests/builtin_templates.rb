module Fog
  module Compute
    class XenServer
      class Real
        def builtin_templates
          load_data(nil, true)
        end
      end
    end
  end
end
