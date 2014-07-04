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

  it 'should return the unique id' do
    vlan_class.read_identity.must_equal(:reference)
  end

  it 'should have 6 attributes' do
    vlan_class.attributes.must_equal([ :reference,
                                       :other_config,
                                       :tag,
                                       :__tagged_pif,
                                       :__untagged_pif,
                                       :uuid ])
  end

  it 'should have 2 aliases' do
    vlan_class.aliases.must_equal({ :untagged_PIF => :__untagged_pif,
                                    :tagged_PIF => :__tagged_pif })
  end
end