module Fog
  module Compute
    class XenServer
      module Models
        class Host < Fog::Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=host

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

          #
          # Reboot the host disabling it first unless auto_disable is
          # set to false
          #
          # This function can only be called if there are no currently running
          # VMs on the host and it is disabled. If there are running VMs, it will
          # raise an exception.
          #
          # @param [Boolean] auto_disable disable the host first
          #
          # @see http://docs.vmd.citrix.com/XenServer/6.0.0/1.0/en_gb/api/?c=host
          #
          def reboot(auto_disable = true)
            disable if auto_disable
            service.reboot_host(reference)
          end

          #
          # Puts the host into a state in which no new VMs can be started.
          # Currently active VMs on the host continue to execute.
          #
          # @see http://docs.vmd.citrix.com/XenServer/6.0.0/1.0/en_gb/api/?c=host
          #
          def disable
            service.disable_host(reference)
          end

          #
          # Puts the host into a state in which new VMs can be started.
          #
          # @see http://docs.vmd.citrix.com/XenServer/6.0.0/1.0/en_gb/api/?c=host
          #
          def enable
            service.enable_host(reference)
          end

          #
          # Shutdown the host disabling it first unless auto_disable is
          # set to false.
          #
          # This function can only be called if there are no currently running
          # VMs on the host and it is disabled. If there are running VMs, it will
          # raise an exception.
          #
          # @param [Boolean] auto_disable disable the host first
          #
          # @see http://docs.vmd.citrix.com/XenServer/6.0.0/1.0/en_gb/api/?c=host
          #
          def shutdown(auto_disable = true)
            disable if auto_disable
            service.shutdown_host(reference)
          end

          def set_attribute(name, *val)
            data = service.set_attribute( 'host', reference, name, *val )
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