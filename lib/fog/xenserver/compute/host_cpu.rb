require 'fog/core/model'

module Fog
  module XenServer
    class Compute
      class HostCpu < Fog::Model
        # API Reference here:
        # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=host_cpu

        identity :reference

        attribute :uuid
        attribute :family
        attribute :features
        attribute :flags
        attribute :__host,          :aliases => :host
        attribute :model
        attribute :model_name,      :aliases => :modelname
        attribute :number
        attribute :other_config
        attribute :speed
        attribute :stepping
        attribute :utilisation
        attribute :vendor

        def host
          service.hosts.get __host
        end
      end
    end
  end
end