module Fog
  module Compute
    class XenServer
      module Models
        class HostCrashDump < Fog::Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=host_crashdump

          identity :reference

          attribute :other_config
          attribute :size
          attribute :timestamp
          attribute :uuid

          has_one   :host,       :hosts
        end
      end
    end
  end
end