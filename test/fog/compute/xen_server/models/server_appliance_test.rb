require 'minitest_helper'

describe Fog::Compute::XenServer::Models::ServerAppliance do
  let(:server_appliance_class) do
    class Fog::Compute::XenServer::Models::ServerAppliance
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::ServerAppliance
  end

  it 'should return the unique id' do
    server_appliance_class.read_identity.must_equal(:reference)
  end

  it 'should have 7 attributes' do
    server_appliance_class.attributes.must_equal([ :reference,
                                                   :allowed_operations,
                                                   :current_operations,
                                                   :description,
                                                   :name,
                                                   :uuid,
                                                   :__vms ])
  end

  it 'should have 4 aliases' do
    server_appliance_class.aliases.must_equal({ :name_description => :description,
                                                :name_label => :name,
                                                :VMs => :__vms,
                                                :vms => :__vms })
  end
end