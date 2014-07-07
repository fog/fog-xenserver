require 'minitest_helper'

describe Fog::Compute::XenServer::Models::Pgpu do
  let(:pgpu_class) do
    class Fog::Compute::XenServer::Models::Pgpu
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::Pgpu
  end

  it 'should return the unique id' do
    pgpu_class.read_identity.must_equal(:reference)
  end

  it 'should have 6 attributes' do
    pgpu_class.attributes.must_equal([ :reference,
                                       :other_config,
                                       :uuid,
                                       :__gpu_group,
                                       :__host,
                                       :__pci ])
  end

  it 'should have 5 aliases' do
    pgpu_class.aliases.must_equal({ :GPU_group => :__gpu_group,
                                    :gpu_group => :__gpu_group,
                                    :host => :__host,
                                    :PCI => :__pci,
                                    :pci => :__pci })
  end
end