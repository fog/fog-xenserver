require 'minitest_helper'

describe Fog::Compute::XenServer::Models::GpuGroup do
  let(:gpu_group_class) do
    class Fog::Compute::XenServer::Models::GpuGroup
      def self.read_identity
        instance_variable_get('@identity')
      end

      def self.read_provider_class
        instance_variable_get('@provider_class')
      end
    end
    Fog::Compute::XenServer::Models::GpuGroup
  end

  it 'should associate to a provider class' do
    gpu_group_class.read_provider_class.must_equal('GPU_group')
  end

  it 'should have an unique id' do
    gpu_group_class.read_identity.must_equal(:reference)
  end

  it 'should have 8 attributes' do
    gpu_group_class.attributes.must_equal([ :reference,
                                            :description,
                                            :gpu_types,
                                            :name,
                                            :other_config,
                                            :uuid,
                                            :__pgpus,
                                            :__vgpus ])
  end

  it 'should have 7 aliases' do
    gpu_group_class.aliases.must_equal({ :GPU_types => :gpu_types,
                                         :name_description => :description,
                                         :name_label => :name,
                                         :PGPUs => :__pgpus,
                                         :pgpus => :__pgpus,
                                         :VGPUs => :__vgpus,
                                         :vgpus => :__vgpus })
  end
end