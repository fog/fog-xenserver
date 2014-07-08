module Fog
  module Compute
    class XenServer
      module Models
        class Pci < Fog::Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=PCI

          provider_class :PCI

          identity :reference

          attribute :device_name
          attribute :other_config
          attribute :pci_id
          attribute :uuid
          attribute :vendor_name

          has_many  :dependencies,  :pcis
          has_one   :host,          :hosts
        end
      end
    end
  end
end