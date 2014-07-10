module Fog
  module Compute
    class XenServer
      module Models
        class Vbd < Fog::Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=VBD

          provider_class :VBD

          identity :reference

          attribute :allowed_operations
          attribute :bootable
          attribute :currently_attached
          attribute :current_operations
          attribute :device
          attribute :empty
          attribute :mode
          attribute :other_config
          attribute :qos_supported_algorithms
          attribute :qos_algorithm_params
          attribute :qos_algorithm_type
          attribute :runtime_properties
          attribute :status_code
          attribute :status_detail
          attribute :storage_lock
          attribute :type
          attribute :unpluggable
          attribute :userdevice
          attribute :uuid

          has_one   :metrics,   :vbds_metrics
          has_one   :vdi,       :vdis,             :aliases => :VDI
          has_one   :vm,        :servers,          :aliases => :VM

          alias_method :server, :vm

          def save
            requires :vdi, :server
            ref = service.create_vbd attributes[:server], attributes[:vdi], attributes
            merge_attributes service.vbds.get(ref).attributes
          end
        end
      end
    end
  end
end