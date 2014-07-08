module Fog
  module Compute
    class XenServer
      module Models
        class Console < Fog::Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=console

          provider_class :console

          identity :reference

          attribute :location
          attribute :other_config
          attribute :protocol
          attribute :uuid

          has_one :vm,          :servers,     :aliases => :VM
        end
      end
    end
  end
end