require 'minitest_helper'

describe Fog::Compute::XenServer::Models::Bond do
  let(:bond_class) do
    class Fog::Compute::XenServer::Models::Bond
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::Bond
  end

  it 'should return the unique id' do
    bond_class.read_identity.must_equal(:reference)
  end

  it 'should have 6 attributes' do
    bond_class.attributes.must_equal([ :reference,
                                       :links_up,
                                       :__master,
                                       :mode,
                                       :other_config,
                                       :__primary_slave,
                                       :properties,
                                       :__slaves, :uuid ])
  end

  it 'should have 3 aliases' do
    bond_class.aliases.must_equal({ :master => :__master,
                                    :primary_slave => :__primary_slave,
                                    :slaves => :__slaves })
  end
end