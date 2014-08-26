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

  it 'should associate to a provider class' do
    pgpu_class.provider_class.must_equal('PGPU')
  end

  it 'should have a collection name' do
    pgpu_class.collection_name.must_equal(:pgpus)
  end

  it 'should have an unique id' do
    pgpu_class.read_identity.must_equal(:reference)
  end

  it 'should have 2 aliases' do
    pgpu_class.aliases.must_equal(:GPU_group => :gpu_group,
                                  :PCI => :pci)
  end

  it "shouldn't have default values" do
    pgpu_class.default_values.must_equal({})
  end

  it "shouldn't require attributes before save" do
    pgpu_class.require_before_save.must_equal([])
  end
end