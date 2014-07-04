require 'fog/core/model'

module Fog
  module Compute
    class XenServer
      module Models
        class Vdi < Fog::Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=VDI

          identity :reference

          attribute :allowed_operations
          attribute :allow_caching
          attribute :__crash_dumps,               :aliases => :crash_dumps
          attribute :current_operations
          attribute :description,                 :aliases => :name_description
          attribute :is_a_snapshot
          attribute :location
          attribute :managed
          attribute :metadata_latest
          attribute :metadata_of_pool
          attribute :missing
          attribute :name,                        :aliases => :name_label
          attribute :on_boot
          attribute :other_config
          attribute :__parent,                    :aliases => :parent
          attribute :physical_utilisation
          attribute :read_only
          attribute :sharable
          attribute :sm_config
          attribute :__snapshots,                 :aliases => :snapshots
          attribute :__snapshot_of,               :aliases => :snapshot_of
          attribute :snapshot_time
          attribute :__sr,                        :aliases => :SR
          attribute :storage_lock
          attribute :tags
          attribute :type
          attribute :uuid
          attribute :__vbds,                      :aliases => :VBDs
          attribute :virtual_size
          attribute :xenstore_data

          #
          # Default VDI type is system
          # Default size 8GB
          # Sharable is false by default
          # read_only is false by default
          #
          def initialize(attributes = {})
            self.virtual_size ||= '8589934592' unless attributes[:virtual_size]
            self.type ||= 'system' unless attributes[:type]
            self.read_only ||= false unless attributes[:read_only]
            self.sharable ||= false unless attributes[:sharable]
            self.other_config ||= {} unless attributes[:other_config]
            super
          end

          def set_attribute(name, *val)
            data = service.set_attribute( 'VDI', reference, name, *val )
          end

          def snapshot_of
            service.vdis.get __sr
          end

          def parent
            service.vdis.get __parent
          end

          def snapshots
            __snapshots.collect do |ref|
              service.vdis.get ref
            end
          end

          def vbds
            __vbds.collect do |ref|
              service.vbds.get ref
            end
          end

          def save
            requires :name, :storage_repository
            ref = service.create_vdi attributes
            merge_attributes service.vdis.get(ref).attributes
          end

          def destroy
            service.destroy_vdi reference
          end

          def storage_repository
            service.storage_repositories.get __sr
          end

          def sr
            storage_repository
          end
        end
      end
    end
  end
end