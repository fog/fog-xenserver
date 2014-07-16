require 'minitest_helper'

describe Fog::Compute::XenServer::Models::HostCpu do
  let(:host_cpu_class) do
    class Fog::Compute::XenServer::Models::HostCpu
      def self.read_identity
        instance_variable_get('@identity')
      end

      def self.read_provider_class
        instance_variable_get('@provider_class')
      end
    end
    Fog::Compute::XenServer::Models::HostCpu
  end

  it 'should associate to a provider class' do
    host_cpu_class.read_provider_class.must_equal('host_cpu')
  end

  it 'should have an unique id' do
    host_cpu_class.read_identity.must_equal(:reference)
  end

  it 'should have 14 attributes' do
    host_cpu_class.attributes.must_equal([ :reference,
                                           :family,
                                           :features,
                                           :flags,
                                           :model,
                                           :model_name,
                                           :number,
                                           :other_config,
                                           :speed,
                                           :stepping,
                                           :utilisation,
                                           :uuid,
                                           :vendor,
                                           :__host ])
  end

  it 'should have 2 aliases' do
    host_cpu_class.aliases.must_equal({ :host => :__host,
                                        :modelname => :model_name })
  end
end