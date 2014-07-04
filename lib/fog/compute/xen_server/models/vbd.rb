require 'fog/core/model'

module Fog
  module Compute
    class XenServer
      module Models
        class Vbd < Fog::Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=VBD

          identity :reference

          attribute :allowed_operations
          attribute :bootable
          attribute :currently_attached
          attribute :current_operations
          attribute :device
          attribute :empty
          attribute :__metrics,           :aliases => :metrics
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
          attribute :__vdi,               :aliases => :VDI
          attribute :__vm,                :aliases => :VM
          attribute :unpluggable
          attribute :userdevice
          attribute :uuid

          #
          # May return nil
          #
          def vdi
            service.vdis.get __vdi
          end

          #
          # TODO: May it return nil?
          #
          def server
            service.servers.get __vm
          end

          def save
            requires :vdi, :server
            ref = service.create_vbd attributes[:server], attributes[:vdi], attributes
            merge_attributes service.vbds.get(ref).attributes
          end

          def unplug
            service.unplug_vbd reference
          end

          def unplug_force
            service.unplug_force_vbd reference
          end

          def eject
            service.eject_vbd reference
          end

          def insert(vdi)
            service.insert_vbd reference, vdi.reference
          end

          #
          # return nil if the VBD is not attached
          #
          # TODO: Confirm that the VBD_metrics handle is invalid
          # when the VBD is NOT attached. I get a HANDLE_INVALID
          # exception in that case.
          #
          def metrics
            return nil unless currently_attached
            rec = service.get_record( __metrics, 'VBD_metrics' )
            Fog::Compute::XenServer::VbdMetrics.new(rec)
          end
        end
      end
    end
  end
end