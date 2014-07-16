require 'minitest_helper'

describe Fog::Compute::XenServer::Models::Server do
  let(:server_class) do
    class Fog::Compute::XenServer::Models::Server
      def self.read_identity
        instance_variable_get('@identity')
      end

      def self.read_provider_class
        instance_variable_get('@provider_class')
      end
    end
    Fog::Compute::XenServer::Models::Server
  end

  let(:server) { Fog::Compute::XenServer::Models::Server.new }
  let(:service) { Object.new }
  let(:vif) { Fog::Compute::XenServer::Models::Vif.new }

  it 'should associate to a provider class' do
    server_class.read_provider_class.must_equal('VM')
  end

  it 'should have an unique id' do
    server_class.read_identity.must_equal(:reference)
  end

  it 'should have 77 attributes' do
    server_class.attributes.must_equal([ :reference,
                                         :actions_after_crash,
                                         :actions_after_reboot,
                                         :actions_after_shutdown,
                                         :allowed_operations,
                                         :blobs,
                                         :blocked_operations,
                                         :bios_strings,
                                         :current_operations,
                                         :domarch,
                                         :domid,
                                         :description,
                                         :generation_id,
                                         :ha_always_run,
                                         :ha_restart_priority,
                                         :hvm_boot_params,
                                         :hvm_boot_policy,
                                         :hvm_shadow_multiplier,
                                         :is_a_snapshot,
                                         :is_a_template,
                                         :is_control_domain,
                                         :is_snapshot_from_vmpp,
                                         :last_booted_record,
                                         :last_boot_cpu_flags,
                                         :memory_dynamic_max,
                                         :memory_dynamic_min,
                                         :memory_overhead,
                                         :memory_static_max,
                                         :memory_static_min,
                                         :memory_target,
                                         :name,
                                         :order,
                                         :other_config,
                                         :pci_bus,
                                         :platform,
                                         :power_state,
                                         :pv_args,
                                         :pv_bootloader,
                                         :pv_bootloader_args,
                                         :pv_kernel,
                                         :pv_legacy_args,
                                         :pv_ramdisk,
                                         :recommendations,
                                         :shutdown_delay,
                                         :snapshot_info,
                                         :snapshot_metadata,
                                         :snapshot_time,
                                         :start_delay,
                                         :tags,
                                         :template_name,
                                         :transportable_snapshot_id,
                                         :user_version,
                                         :uuid,
                                         :vcpus_at_startup,
                                         :vcpus_max,
                                         :vcpus_params,
                                         :version,
                                         :xenstore_data,
                                         :__affinity,
                                         :__appliance,
                                         :__attached_pcis,
                                         :__children,
                                         :__consoles,
                                         :__crash_dumps,
                                         :__guest_metrics,
                                         :__metrics,
                                         :__parent,
                                         :__protection_policy,
                                         :__resident_on,
                                         :__snapshots,
                                         :__snapshot_of,
                                         :__suspend_sr,
                                         :__suspend_vdi,
                                         :__vbds,
                                         :__vgpus,
                                         :__vifs,
                                         :__vtpms ])
  end

  it 'should have 42 aliases' do
    server_class.aliases.must_equal({ :name_label => :name,
                                      :name_description => :description,
                                      :affinity => :__affinity,
                                      :appliance => :__appliance,
                                      :consoles => :__consoles,
                                      :attached_PCIs => :__attached_pcis,
                                      :attached_pcis => :__attached_pcis,
                                      :children => :__children,
                                      :crash_dumps => :__crash_dumps,
                                      :guest_metrics => :__guest_metrics,
                                      :last_boot_CPU_flags => :last_boot_cpu_flags,
                                      :metrics => :__metrics,
                                      :parent => :__parent,
                                      :PV_args => :pv_args,
                                      :PV_bootloader => :pv_bootloader,
                                      :PV_bootloader_args => :pv_bootloader_args,
                                      :PV_kernel => :pv_kernel,
                                      :PV_ramdisk => :pv_ramdisk,
                                      :PV_legacy_args => :pv_legacy_args,
                                      :resident_on => :__resident_on,
                                      :snapshot_of => :__snapshot_of,
                                      :suspend_SR => :__suspend_sr,
                                      :suspend_sr => :__suspend_sr,
                                      :suspend_VDI => :__suspend_vdi,
                                      :suspend_vdi => :__suspend_vdi,
                                      :snapshots => :__snapshots,
                                      :VGPUs => :__vgpus,
                                      :vgpus => :__vgpus,
                                      :VTPMs => :__vtpms,
                                      :vtpms => :__vtpms,
                                      :VBDs => :__vbds,
                                      :vbds => :__vbds,
                                      :protection_policy => :__protection_policy,
                                      :VCPUs_at_startup => :vcpus_at_startup,
                                      :VCPUs_max => :vcpus_max,
                                      :VCPUs_params => :vcpus_params,
                                      :VIFs => :__vifs,
                                      :vifs => :__vifs,
                                      :HVM_boot_policy => :hvm_boot_policy,
                                      :HVM_boot_params => :hvm_boot_params,
                                      :HVM_shadow_multiplier => :hvm_shadow_multiplier,
                                      :PCI_bus => :pci_bus })
  end

  describe '#tools_installed?' do
    describe 'when guest_metrics is nil' do
      it 'should return false' do
        server.stub(:guest_metrics, nil) do
          server.tools_installed?.must_equal false
        end
      end
    end

    describe 'when guest_metrics is not nil' do
      it 'should return true' do
        server.stub(:guest_metrics, Object.new) do
          server.tools_installed?.must_equal true
        end
      end
    end
  end

  describe '#home_hypervisor' do
    before :each do
      def service.hosts
        [ 1, 2 ]
      end
    end

    it 'should return the first host' do
      server.stub(:service, service) do
        server.home_hypervisor.must_equal 1
      end
    end
  end

  describe '#mac_address' do
    before :each do
      vif.mac = 'mac'
    end

    it 'should return the mac address of the first virtual interface' do
      server.stub(:vifs, [ vif ]) do
        server.mac_address.must_equal 'mac'
      end
    end
  end

  describe '#running?' do
    describe 'when it is running' do
      before :each do
        server.power_state = 'Running'
      end

      it 'should return true' do
        server.stub(:reload, true) do
          server.running?.must_equal true
        end
      end
    end

    describe 'when it is not running' do
      before :each do
        server.power_state = 'Anything'
      end

      it 'should return false' do
        server.stub(:reload, true) do
          server.running?.must_equal false
        end
      end
    end
  end

  describe '#halted?' do
    describe 'when it is halted' do
      before :each do
        server.power_state = 'Halted'
      end

      it 'should return true' do
        server.stub(:reload, true) do
          server.halted?.must_equal true
        end
      end
    end

    describe 'when it is not halted' do
      before :each do
        server.power_state = 'Anything'
      end

      it 'should return false' do
        server.stub(:reload, true) do
          server.halted?.must_equal false
        end
      end
    end
  end
end