module Fog
  module Compute
    class XenServer
      module Models
        class CrashDump < Fog::Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=crashdump

          identity :reference

          attribute :other_config
          attribute :uuid

          has_one :vdi,           :vdis,        :aliases => :VDI
          has_one :vm,            :servers,     :aliases => :VM
        end
      end
    end
  end
end