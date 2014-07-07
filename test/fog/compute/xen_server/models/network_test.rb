require 'minitest_helper'

describe Fog::Compute::XenServer::Models::Network do
  let(:network_class) do
    class Fog::Compute::XenServer::Models::Network
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::Network
  end

  it 'should return the unique id' do
    network_class.read_identity.must_equal(:reference)
  end

  it 'should have 14 attributes' do
    network_class.attributes.must_equal([ :reference,
                                          :allowed_operations,
                                          :blobs,
                                          :bridge,
                                          :current_operations,
                                          :default_locking_mode,
                                          :description,
                                          :mtu,
                                          :name,
                                          :other_config,
                                          :tags,
                                          :uuid,
                                          :__pifs,
                                          :__vifs ])
  end

  it 'should have 7 aliases' do
    network_class.aliases.must_equal({ :VIFs => :__vifs,
                                       :vifs => :__vifs,
                                       :MTU => :mtu, 
                                       :name_description => :description, 
                                       :name_label => :name,
                                       :PIFs => :__pifs,
                                       :pifs => :__pifs })
  end
end