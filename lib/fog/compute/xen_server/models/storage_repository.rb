module Fog
  module Compute
    class XenServer
      module Models
        class StorageRepository < Fog::Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=SR

          provider_class :SR
          collection_name :storage_repositories

          identity :reference

          attribute :allowed_operations
          attribute :blobs
          attribute :content_type,                                          :default => 'user'
          attribute :current_operations
          attribute :description,          :aliases => :name_description,   :default => ''
          attribute :introduced_by
          attribute :local_cache_enabled
          attribute :name,                 :aliases => :name_label
          attribute :other_config
          attribute :physical_size,                                         :default => '0'
          attribute :physical_utilisation
          attribute :shared,                                                :default => false
          attribute :sm_config,                                             :default => {}
          attribute :tags
          attribute :type
          attribute :uuid
          attribute :virtual_allocation

          has_many  :pbds,  :pbds,         :aliases => :PBDs
          has_many  :vdis,  :vdis,         :aliases => :VDIs

          require_before_save :name, :type
        end
      end
    end
  end
end