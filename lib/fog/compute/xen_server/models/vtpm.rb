module Fog
  module Compute
    class XenServer
      module Models
        class Vtpm < Fog::Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=VTPM

          identity :reference

          attribute :uuid

          has_one  :backend,  :servers
          has_one  :vm,       :servers
        end
      end
    end
  end
end