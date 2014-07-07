require 'fog/core'

module Fog
  module Compute
    class XenServer < Fog::Service
      autoload :Models, 'fog/compute/xen_server/models'
      autoload :Real, 'fog/compute/xen_server/real'
      autoload :Mock, 'fog/compute/xen_server/mock'

      requires :xenserver_username
      requires :xenserver_password
      requires :xenserver_url
      recognizes :xenserver_defaults
      recognizes :xenserver_timeout

      model_path 'fog/compute/xen_server/models'
      model :blob
      collection :blobs
      model :bond
      collection :bonds
      model :crash_dump
      collection :crash_dumps
      model :dr_task
      collection :dr_tasks
      model :gpu_group
      collection :gpu_groups
      model :host_crash_dump
      collection :host_crash_dumps
      model :host_patch
      collection :host_patchs
      model :pci
      collection :pcis
      model :pgpu
      collection :pgpus
      model :pif_metrics
      collection :pifs_metrics
      model :pool_patch
      collection :pool_patchs
      model :role
      collection :roles
      model :server
      collection :servers
      model :server_appliance
      collection :server_appliances
      model :storage_manager
      collection :storage_managers
      model :tunnel
      collection :tunnels
      model :vmpp
      collection :vmpps
      model :vtpm
      collection :vtpms
      model :host
      collection :hosts
      collection :vifs
      model :vif
      collection :storage_repositories
      model :storage_repository
      collection :pools
      model :pool
      collection :vbds
      model :vbd
      collection :vdis
      model :vdi
      collection :networks
      model :network
      collection :pifs
      model  :pif
      collection :pbds
      model  :pbd
      model  :guest_metrics
      collection  :guests_metrics
      model  :server_metrics
      collection  :servers_metrics
      model  :vbd_metrics
      collection :vbds_metrics
      model  :vif_metrics
      collection :vifs_metrics
      model  :host_metrics
      collection :hosts_metrics
      model  :host_cpu
      collection :host_cpus
      model  :vlan
      collection :vlans
      model  :console
      collection :consoles

      request_path 'fog/compute/xen_server/requests'
      request :create_server
      request :create_vif
      request :create_vdi
      request :create_vbd
      request :destroy_vif
      request :clone_server
      request :destroy_server
      request :unplug_vbd
      request :eject_vbd
      request :insert_vbd
      request :destroy_vdi
      request :shutdown_server
      request :start_vm
      request :start_server
      request :get_record
      request :get_records
      request :set_affinity
      request :set_attribute
      request :reboot_server
      request :provision_server
      request :scan_sr
      request :unplug_pbd
      request :destroy_sr
      request :create_sr
      request :reboot_host
      request :disable_host
      request :enable_host
      request :shutdown_host
      request :create_network
      request :destroy_network
      request :create_vlan
      request :destroy_vlan
      request :snapshot_server
      request :snapshot_revert

      def self.const_missing(name)
        Models.const_get(name)
      end
    end
  end
end