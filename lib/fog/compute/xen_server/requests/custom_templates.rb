module Fog
  module Compute
    class XenServer
      class Real
        def custom_templates
          load_data(nil, true)
        end
      end
    end
  end
end
