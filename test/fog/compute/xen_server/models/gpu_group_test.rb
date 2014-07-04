require 'minitest_helper'

describe Fog::Compute::XenServer::Models::GpuGroup do
  let(:gpu_group_class) do
    class Fog::Compute::XenServer::Models::GpuGroup
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::GpuGroup
  end

  it 'should return the unique id' do
    gpu_group_class.read_identity.must_equal(:reference)
  end

  it 'should have 8 attributes' do
    gpu_group_class.attributes.must_equal([ :reference,
                                            :description,
                                            :gpu_types,
                                            :name,
                                            :other_config,
                                            :__pgpus,
                                            :uuid,
                                            :__vgpus ])
  end

  it 'should have 5 aliases' do
    gpu_group_class.aliases.must_equal({ :GPU_types => :gpu_types,
                                         :name_description => :description,
                                         :name_label => :name,
                                         :PGPUs => :__pgpus,
                                         :VGPUs => :__vgpus })
  end
end