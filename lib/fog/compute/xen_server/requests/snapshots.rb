module Fog
  module Compute
    class XenServer
      class Real
        def snapshots
          load_data(:is_a_snapshot)
        end
      end
    end
  end
end
