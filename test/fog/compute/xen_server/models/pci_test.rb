require 'minitest_helper'

describe Fog::Compute::XenServer::Models::Pci do
  let(:pci_class) do
    class Fog::Compute::XenServer::Models::Pci
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::Pci
  end

  it 'should return the unique id' do
    pci_class.read_identity.must_equal(:reference)
  end

  it 'should have 8 attributes' do
    pci_class.attributes.must_equal([ :reference,
                                      :__dependencies,
                                      :device_name,
                                      :__host,
                                      :other_config,
                                      :pci_id,
                                      :uuid,
                                      :vendor_name ])
  end

  it 'should have 2 aliases' do
    pci_class.aliases.must_equal({ :dependencies => :__dependencies,
                                   :host => :__host })
  end
end