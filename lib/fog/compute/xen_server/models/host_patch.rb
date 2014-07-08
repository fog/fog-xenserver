module Fog
  module Compute
    class XenServer
      module Models
        class HostPatch < Fog::Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=host_patch

          provider_class :host_patch

          identity :reference

          attribute :applied
          attribute :description,         :aliases => :name_description
          attribute :name,                :aliases => :name_label
          attribute :other_config
          attribute :size
          attribute :timestamp_applied
          attribute :uuid
          attribute :version

          has_one   :host,       :hosts
          has_one   :pool_patch, :pool_patchs
        end
      end
    end
  end
end