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
          attribute :physical_utilisation
          attribute :read_only
          attribute :sharable
          attribute :sm_config
          attribute :snapshot_time
          attribute :storage_lock
          attribute :tags
          attribute :type
          attribute :uuid
          attribute :virtual_size
          attribute :xenstore_data

          has_many  :crash_dumps,  :crash_dumps
          has_one   :parent,       :vdis
          has_many  :snapshots,    :vdis
          has_one   :snapshot_of,  :vdis
          has_one   :sr,           :storage_repositories,      :aliases => :SR
          has_many  :vbds,         :vbds,                      :aliases => :VBDs

          alias_method :storage_repository, :sr

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

          def save
            requires :name, :storage_repository
            ref = service.create_vdi attributes
            merge_attributes service.vdis.get(ref).attributes
          end

          def destroy
            service.destroy_vdi reference
          end
        end
      end
    end
  end
end