module Fog
  module Compute
    class XenServer
      module Models
        class Pool < Fog::Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=pool

          identity :reference

          attribute :blobs
          attribute :description,            :aliases => :name_description
          attribute :gui_config
          attribute :ha_allow_overcommit
          attribute :ha_configuration
          attribute :ha_enabled
          attribute :ha_host_failures_to_tolerate
          attribute :ha_overcommitted
          attribute :ha_plan_exists_for
          attribute :ha_statefiles
          attribute :name,                   :aliases => :name_label
          attribute :other_config
          attribute :redo_log_enabled
          attribute :redo_log_vdi
          attribute :restrictions
          attribute :tags
          attribute :uuid
          attribute :vswitch_controller
          attribute :wlb_enabled
          attribute :wlb_url
          attribute :wlb_username
          attribute :wlb_verify_cert

          has_one  :crash_dump_sr,    :storage_repositories,   :aliases => :crash_dump_SR
          has_one  :default_sr,       :storage_repositories,   :aliases => :default_SR
          has_one  :master,           :hosts
          has_many :metadata_vdis,    :vdis,                   :aliases => :metadata_VDIs
          has_one  :suspend_image_sr, :storage_repositories,   :aliases => :suspend_image_SR

          alias_method :default_storage_repository, :default_sr

          def default_sr=(sr)
            service.set_attribute( 'pool', reference, 'default_SR', sr.reference )
          end
          alias :default_storage_repository= :default_sr=

          def suspend_image_sr=(sr)
            service.set_attribute( 'pool', reference, 'suspend_image_SR', sr.reference )
          end

          def set_attribute(name, *val)
            data = service.set_attribute( 'pool', reference, name, *val )
            # Do not reload automatically for performance reasons
            # We can set multiple attributes at the same time and
            # then reload manually
            #reload
          end
        end
      end
    end
  end
end