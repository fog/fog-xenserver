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

  it 'should associate to a provider class' do
    server_appliance_class.provider_class.must_equal('VM_appliance')
  end

  it 'should have a collection name' do
    server_appliance_class.collection_name.must_equal(:server_appliances)
  end

  it 'should have an unique id' do
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

  it "shouldn't have default values" do
    server_appliance_class.default_values.must_equal({})
  end

  it "shouldn't require attributes before save" do
    server_appliance_class.require_before_save.must_equal([])
  end
end