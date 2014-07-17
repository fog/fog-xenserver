require 'minitest_helper'

describe Fog::Compute::XenServer::Models::Role do
  let(:role_class) do
    class Fog::Compute::XenServer::Models::Role
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::Role
  end

  it 'should associate to a provider class' do
    role_class.provider_class.must_equal('role')
  end

  it 'should have an unique id' do
    role_class.read_identity.must_equal(:reference)
  end

  it 'should have 5 attributes' do
    role_class.attributes.must_equal([ :reference,
                                       :description,
                                       :name,
                                       :uuid,
                                       :__subroles ])
  end

  it 'should have 3 aliases' do
    role_class.aliases.must_equal({ :name_description => :description,
                                    :name_label => :name, 
                                    :subroles => :__subroles })
  end
end