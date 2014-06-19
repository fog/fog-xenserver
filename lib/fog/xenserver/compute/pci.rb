require 'fog/core/model'

module Fog
  module XenServer
    class Compute
      class Pci < Fog::Model
        # API Reference here:
        # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=PCI

        identity :reference

        attribute :__dependencies,      :aliases => :dependencies
        attribute :device_name
        attribute :__host,              :aliases => :host
        attribute :other_config
        attribute :pci_id
        attribute :uuid
        attribute :vendor_name
      end
    end
  end
end