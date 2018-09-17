module Fog
  module XenServer
    class Compute
      module Models
        class Model < Fog::Model
          extend ClassMethods
          include InstanceMethods
        end
      end
    end
  end
end
