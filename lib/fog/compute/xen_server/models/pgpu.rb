module Fog
  module Compute
    class XenServer
      module Models
        class Pgpu < Fog::Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=PGPU

          identity :reference

          attribute :other_config
          attribute :uuid

          has_one   :gpu_group,     :gpu_groups,  :aliases => :GPU_group
          has_one   :host,          :hosts
          has_one   :pci,           :pcis,        :aliases => :PCI
        end
      end
    end
  end
end