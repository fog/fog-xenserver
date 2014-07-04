require 'fog/core/model'

module Fog
  module Compute
    class XenServer
      module Models
        class PoolPatch < Fog::Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=pool_patch

          identity :reference

          attribute :after_apply_guidance
          attribute :description,             :aliases => :name_description
          attribute :__host_patches,          :aliases => :host_patches
          attribute :name,                    :aliases => :name_label
          attribute :other_config
          attribute :pool_applied
          attribute :size
          attribute :uuid
          attribute :version
        end
      end
    end
  end
end