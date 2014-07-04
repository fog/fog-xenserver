require 'minitest_helper'

describe Fog::Compute::XenServer::Models::Vmpp do
  let(:vmpp_class) do
    class Fog::Compute::XenServer::Models::Vmpp
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::Vmpp
  end

  it 'should return the unique id' do
    vmpp_class.read_identity.must_equal(:reference)
  end

  it 'should have 21 attributes' do
    vmpp_class.attributes.must_equal([ :reference,
                                       :alarm_config,
                                       :archive_frequency,
                                       :archive_last_run_time,
                                       :archive_schedule,
                                       :archive_target_config,
                                       :archive_target_type,
                                       :backup_frequency,
                                       :backup_last_run_time,
                                       :backup_retention_value,
                                       :backup_schedule,
                                       :backup_type,
                                       :description,
                                       :is_alarm_enabled,
                                       :is_archive_running,
                                       :is_backup_running,
                                       :is_policy_enabled,
                                       :name,
                                       :recent_alerts,
                                       :uuid,
                                       :__vms ])
  end

  it 'should have 3 aliases' do
    vmpp_class.aliases.must_equal({ :name_description => :description,
                                    :name_label => :name, 
                                    :VMs => :__vms })
  end
end