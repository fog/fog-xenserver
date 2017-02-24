module Fog
  module Compute
    class XenServer
      class Real
        def templates
          load_data(:is_a_template)
        end
      end
    end
  end
end
