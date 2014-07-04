require 'minitest_helper'

describe Fog::Compute::XenServer::Models::Host do
  let(:host_class) do
    class Fog::Compute::XenServer::Models::Host
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::Host
  end

  it 'should return the unique id' do
    host_class.read_identity.must_equal(:reference)
  end

  it 'should have 49 attributes' do
    host_class.attributes.must_equal([ :reference,
                                       :address,
                                       :allowed_operations,
                                       :api_version_major,
                                       :api_version_minor,
                                       :api_version_vendor,
                                       :api_version_vendor_implementation,
                                       :bios_strings,
                                       :blobs,
                                       :capabilities,
                                       :chipset_info,
                                       :cpu_configuration,
                                       :cpu_info,
                                       :__crashdumps,
                                       :__crash_dump_sr,
                                       :current_operations,
                                       :description,
                                       :edition,
                                       :enabled,
                                       :external_auth_configuration,
                                       :external_auth_service_name,
                                       :external_auth_type,
                                       :guest_vcpus_params,
                                       :ha_network_peers,
                                       :ha_statefiles,
                                       :hostname,
                                       :__host_cpus,
                                       :license_params,
                                       :license_server,
                                       :__local_cache_sr,
                                       :logging,
                                       :memory_overhead,
                                       :__metrics,
                                       :name,
                                       :other_config,
                                       :patches,
                                       :__pbds,
                                       :__pcis,
                                       :__pgpus,
                                       :__pifs,
                                       :power_on_config,
                                       :power_on_mode,
                                       :__resident_vms,
                                       :sched_policy,
                                       :software_version,
                                       :supported_bootloaders,
                                       :suspend_image_sr,
                                       :tags,
                                       :uuid ])
  end

  it 'should have 17 aliases' do
    host_class.aliases.must_equal({ :name_label => :name,
                                    :API_version_major => :api_version_major,
                                    :API_version_minor => :api_version_minor,
                                    :API_version_vendor => :api_version_vendor,
                                    :API_version_vendor_implementation => :api_version_vendor_implementation,
                                    :crash_dump_sr => :__crash_dump_sr,
                                    :crashdumps => :__crashdumps,
                                    :guest_VCPUs_params => :guest_vcpus_params,
                                    :local_cache_sr => :__local_cache_sr,
                                    :metrics => :__metrics,
                                    :name_description => :description,
                                    :PBDs => :__pbds,
                                    :PCIs => :__pcis,
                                    :PGPUs => :__pgpus,
                                    :PIFs => :__pifs,
                                    :resident_VMs => :__resident_vms,
                                    :host_CPUs => :__host_cpus })
  end
end