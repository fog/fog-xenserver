module Fog
  module Compute
    class XenServer
      module Models
        class Host < Fog::Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=host

          provider_class :host

          identity :reference

          attribute :address
          attribute :allowed_operations
          attribute :api_version_major,                   :aliases => :API_version_major
          attribute :api_version_minor,                   :aliases => :API_version_minor
          attribute :api_version_vendor,                  :aliases => :API_version_vendor
          attribute :api_version_vendor_implementation,   :aliases => :API_version_vendor_implementation
          attribute :bios_strings
          attribute :blobs
          attribute :capabilities
          attribute :chipset_info
          attribute :cpu_configuration
          attribute :cpu_info
          attribute :current_operations
          attribute :description,                         :aliases => :name_description
          attribute :edition
          attribute :enabled
          attribute :external_auth_configuration
          attribute :external_auth_service_name
          attribute :external_auth_type
          attribute :guest_vcpus_params,                  :aliases => :guest_VCPUs_params
          attribute :ha_network_peers
          attribute :ha_statefiles
          attribute :hostname
          attribute :license_params
          attribute :license_server
          attribute :logging
          attribute :memory_overhead
          attribute :name,                                :aliases => :name_label
          attribute :other_config
          attribute :patches
          attribute :power_on_config
          attribute :power_on_mode
          attribute :sched_policy
          attribute :software_version
          attribute :supported_bootloaders
          attribute :suspend_image_sr
          attribute :tags
          attribute :uuid

          has_many :crashdumps,    :crash_dumps
          has_one  :crash_dump_sr, :storage_repositories
          has_many :host_cpus,     :host_cpus,            :aliases => :host_CPUs
          has_one  :local_cache_sr,:storage_repositories
          has_one  :metrics,       :hosts_metrics
          has_many :pbds,          :pbds,                 :aliases => :PBDs
          has_many :pcis,          :pcis,                 :aliases => :PCIs
          has_many :pgpus,         :pgpus,                :aliases => :PGPUs
          has_many :pifs,          :pifs,                 :aliases => :PIFs
          has_many :resident_vms,  :servers,              :aliases => :resident_VMs

          alias_method :resident_servers, :resident_vms
        end
      end
    end
  end
end