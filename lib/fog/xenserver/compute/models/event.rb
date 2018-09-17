module Fog
  module XenServer
    class Compute
      module Models
        class Event < Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=event

          provider_class :event
          collection_name :events

          identity :reference

          attribute :klass, :aliases => :class, :as => :class
          attribute :id
          attribute :obj_uuid
          attribute :operation
          attribute :ref
          attribute :timestamp
        end
      end
    end
  end
end
