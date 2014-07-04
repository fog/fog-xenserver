require 'minitest_helper'

describe Fog::Compute::XenServer::Models::Pbd do
  let(:pbd_class) do
    class Fog::Compute::XenServer::Models::Pbd
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::Pbd
  end

  it 'should return the unique id' do
    pbd_class.read_identity.must_equal(:reference)
  end

  it 'should have 7 attributes' do
    pbd_class.attributes.must_equal([ :reference,
                                      :currently_attached,
                                      :device_config,
                                      :__host,
                                      :other_config,
                                      :__sr,
                                      :uuid ])
  end

  it 'should have 2 aliases' do
    pbd_class.aliases.must_equal({ :host => :__host,
                                   :SR => :__sr })
  end
end