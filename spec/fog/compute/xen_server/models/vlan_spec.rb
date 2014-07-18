require 'minitest_helper'

describe Fog::Compute::XenServer::Models::Vlan do
  let(:vlan_class) do
    class Fog::Compute::XenServer::Models::Vlan
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::Vlan
  end

  it 'should associate to a provider class' do
    vlan_class.provider_class.must_equal('VLAN')
  end

  it 'should have an unique id' do
    vlan_class.read_identity.must_equal(:reference)
  end

  it 'should have 6 attributes' do
    vlan_class.attributes.must_equal([ :reference,
                                       :other_config,
                                       :tag,
                                       :uuid,
                                       :__tagged_pif,
                                       :__untagged_pif ])
  end

  it 'should have 4 aliases' do
    vlan_class.aliases.must_equal({ :untagged_PIF => :__untagged_pif,
                                    :untagged_pif => :__untagged_pif,
                                    :tagged_PIF => :__tagged_pif,
                                    :tagged_pif => :__tagged_pif })
  end

  it "shouldn't have default values" do
    vlan_class.default_values.must_equal({})
  end
end