module Fog
  module Compute
    class XenServer
      module Models
        class Pool < Fog::Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=pool

          provider_class :pool
          collection_name :pools

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

          has_one_identity    :crash_dump_sr,    :storage_repositories,   :aliases => :crash_dump_SR,     :as => :crash_dump_SR
          has_one_identity    :default_sr,       :storage_repositories,   :aliases => :default_SR,        :as => :default_SR
          has_one_identity    :master,           :hosts
          has_many_identities :metadata_vdis,    :vdis,                   :aliases => :metadata_VDIs,     :as => :metadata_VDIs
          has_one_identity    :suspend_image_sr, :storage_repositories,   :aliases => :suspend_image_SR,  :as => :suspend_image_SR

          alias_method :default_storage_repository, :default_sr
        end
      end
    end
  end
end