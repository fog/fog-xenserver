module Fog
  module Compute
    class XenServer
      module Models
        class Vdi < Fog::Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=VDI

          provider_class :VDI
          collection_name :vdis

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
          attribute :other_config,                :default => {}
          attribute :physical_utilisation
          attribute :read_only,                   :default => false
          attribute :sharable,                    :default => false
          attribute :sm_config
          attribute :snapshot_time
          attribute :storage_lock
          attribute :tags,                        :default => 'system'
          attribute :type
          attribute :uuid
          attribute :virtual_size,                :default => '8589934592'
          attribute :xenstore_data

          has_many  :crash_dumps,  :crash_dumps
          has_one   :parent,       :vdis
          has_many  :snapshots,    :vdis
          has_one   :snapshot_of,  :vdis
          has_one   :sr,           :storage_repositories,      :aliases => :SR
          has_many  :vbds,         :vbds,                      :aliases => :VBDs

          require_before_save :name, :storage_repository

          alias_method :storage_repository, :sr

          #
          # Sharable is false by default
          # read_only is false by default
          # There is a bug on fog-core that need to be solved before
          # default_values work with false value
          #
          def initialize(attributes = {})
            self.read_only ||= false unless attributes[:read_only]
            self.sharable ||= false unless attributes[:sharable]
            super
          end

          def save
            require_creation_attributes
            ref = service.create_vdi(attributes)
            merge_attributes collection.get(ref).attributes
            true
          end
        end
      end
    end
  end
end