require 'fog/compute/models/server'

module Fog
  module Compute
    class XenServer
      module Models
        class Server < Fog::Compute::Server
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=VM

          provider_class :VM
          collection_name :servers

          identity :reference

          attribute :actions_after_crash,                                             :default => 'Restart'
          attribute :actions_after_reboot,                                            :default => 'Restart'
          attribute :actions_after_shutdown,                                          :default => 'Destroy'
          attribute :allowed_operations
          attribute :blobs
          attribute :blocked_operations
          attribute :bios_strings
          attribute :current_operations
          attribute :domarch
          attribute :domid
          attribute :description,                 :aliases => :name_description,      :default => ''
          attribute :generation_id
          attribute :ha_always_run
          attribute :ha_restart_priority
          attribute :hvm_boot_params,             :aliases => :HVM_boot_params,       :default => {}
          attribute :hvm_boot_policy,             :aliases => :HVM_boot_policy,       :default => ''
          attribute :hvm_shadow_multiplier,       :aliases => :HVM_shadow_multiplier
          attribute :is_a_snapshot
          attribute :is_a_template,                                                   :default => true
          attribute :is_control_domain
          attribute :is_snapshot_from_vmpp
          attribute :last_booted_record
          attribute :last_boot_cpu_flags,         :aliases => :last_boot_CPU_flags
          attribute :memory_dynamic_max,                                              :default => '536870912'
          attribute :memory_dynamic_min,                                              :default => '536870912'
          attribute :memory_overhead
          attribute :memory_static_max,                                               :default => '536870912'
          attribute :memory_static_min,                                               :default => '536870912'
          attribute :memory_target
          attribute :name,                        :aliases => :name_label,            :default => ''
          attribute :order
          attribute :other_config,                                                    :default => {}
          attribute :pci_bus,                     :aliases => :PCI_bus,               :default => ''
          attribute :platform,                                                        :default => { 'nx' => 'true',
                                                                                                    'acpi' => 'true',
                                                                                                    'apic' => 'true',
                                                                                                    'pae' => 'true',
                                                                                                    'viridian' => 'true' }
          attribute :power_state
          attribute :pv_args,                     :aliases => :PV_args,               :default => '-- quiet console=hvc0'
          attribute :pv_bootloader,               :aliases => :PV_bootloader,         :default => 'pygrub' # pvgrub, eliloader
          attribute :pv_bootloader_args,          :aliases => :PV_bootloader_args,    :default => ''
          attribute :pv_kernel,                   :aliases => :PV_kernel,             :default => ''
          attribute :pv_legacy_args,              :aliases => :PV_legacy_args,        :default => ''
          attribute :pv_ramdisk,                  :aliases => :PV_ramdisk,            :default => ''
          attribute :recommendations,                                                 :default => ''
          attribute :shutdown_delay
          attribute :snapshot_info
          attribute :snapshot_metadata
          attribute :snapshot_time
          attribute :start_delay
          attribute :tags
          attribute :template_name
          attribute :transportable_snapshot_id
          attribute :user_version,                                                    :default => '0'
          attribute :uuid
          attribute :vcpus_at_startup,            :aliases => :VCPUs_at_startup,      :default => '1'
          attribute :vcpus_max,                   :aliases => :VCPUs_max,             :default => '1'
          attribute :vcpus_params,                :aliases => :VCPUs_params,          :default => {}
          attribute :version
          attribute :xenstore_data

          has_one_identity      :affinity,          :hosts
          has_one_identity      :appliance,         :server_appliances
          has_many_identities   :attached_pcis,     :pcis,                    :aliases => :attached_PCIs
          has_many_identities   :children,          :servers
          has_many_identities   :consoles,          :consoles
          has_many_identities   :crash_dumps,       :crash_dumps
          has_one_identity      :guest_metrics,     :guests_metrics
          has_one_identity      :metrics,           :servers_metrics
          has_one_identity      :parent,            :servers
          has_one_identity      :protection_policy, :vmpps
          has_one_identity      :resident_on,       :hosts
          has_many_identities   :snapshots,         :servers
          has_one_identity      :snapshot_of,       :servers
          has_one_identity      :suspend_sr,        :storage_repositories,    :aliases => :suspend_SR
          has_one_identity      :suspend_vdi,       :vdis,                    :aliases => :suspend_VDI
          has_many_identities   :vbds,              :vbds,                    :aliases => :VBDs
          has_many_identities   :vgpus,             :vgpus,                   :aliases => :VGPUs
          has_many_identities   :vifs,              :vifs,                    :aliases => :VIFs
          has_many_identities   :vtpms,             :vtpms,                   :aliases => :VTPMs

          require_before_save :name

          def tools_installed?
            !guest_metrics.nil?
          end

          def home_hypervisor
            service.hosts.first
          end

          def mac_address
            vifs.first.mac
          end

          def running?
            reload
            power_state == "Running"
          end

          def halted?
            reload
            power_state == "Halted"
          end

          def revert(snapshot_ref)
            Fog::Logger.deprecation 'This method is DEPRECATED. Use #snapshot_revert instead.'
            snapshot_revert(snapshot_ref)
          end
        end
      end
    end
  end
end