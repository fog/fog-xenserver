require 'fog/core/model'

module Fog
  module XenServer
    class Compute
      class HostPatch < Fog::Model
        # API Reference here:
        # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=host_patch

        identity :reference

        attribute :applied
        attribute :__host,              :aliases => :host
        attribute :description,         :aliases => :name_description
        attribute :name,                :aliases => :name_label
        attribute :other_config
        attribute :__pool_patch,        :aliases => :pool_patch
        attribute :size
        attribute :timestamp_applied
        attribute :uuid
        attribute :version
      end
    end
  end
end