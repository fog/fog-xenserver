require 'minitest_helper'

describe Fog::Compute::XenServer::Models::Pbd do
  let(:pbd_class) do
    class Fog::Compute::XenServer::Models::Pbd
      def self.read_identity
        instance_variable_get('@identity')
      end

      def self.read_provider_class
        instance_variable_get('@provider_class')
      end
    end
    Fog::Compute::XenServer::Models::Pbd
  end

  it 'should associate to a provider class' do
    pbd_class.read_provider_class.must_equal('PBD')
  end

  it 'should have an unique id' do
    pbd_class.read_identity.must_equal(:reference)
  end

  it 'should have 7 attributes' do
    pbd_class.attributes.must_equal([ :reference,
                                      :currently_attached,
                                      :device_config,
                                      :other_config,
                                      :uuid,
                                      :__host,
                                      :__sr ])
  end

  it 'should have 3 aliases' do
    pbd_class.aliases.must_equal({ :host => :__host,
                                   :SR => :__sr,
                                   :sr => :__sr })
  end
end