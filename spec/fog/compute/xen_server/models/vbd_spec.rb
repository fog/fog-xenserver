require 'minitest_helper'

describe Fog::Compute::XenServer::Models::Vbd do
  let(:vbd_class) do
    class Fog::Compute::XenServer::Models::Vbd
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::Vbd
  end

  it 'should associate to a provider class' do
    vbd_class.provider_class.must_equal('VBD')
  end

  it 'should have a collection name' do
    vbd_class.collection_name.must_equal(:vbds)
  end

  it 'should have an unique id' do
    vbd_class.read_identity.must_equal(:reference)
  end

  it 'should have 20 attributes' do
    vbd_class.attributes.must_equal([ :reference,
                                      :allowed_operations,
                                      :bootable,
                                      :currently_attached,
                                      :current_operations,
                                      :device,
                                      :empty,
                                      :mode,
                                      :other_config,
                                      :qos_supported_algorithms,
                                      :qos_algorithm_params,
                                      :qos_algorithm_type,
                                      :runtime_properties,
                                      :status_code,
                                      :status_detail,
                                      :storage_lock,
                                      :type,
                                      :unpluggable,
                                      :userdevice,
                                      :uuid ])
  end

  it 'should has 23 masks' do
    vbd_class.masks.must_equal(:reference => :reference,
                               :allowed_operations => :allowed_operations, 
                               :bootable => :bootable, 
                               :currently_attached => :currently_attached, 
                               :current_operations => :current_operations, 
                               :device => :device, 
                               :empty => :empty, 
                               :mode => :mode, 
                               :other_config => :other_config, 
                               :qos_supported_algorithms => :qos_supported_algorithms, 
                               :qos_algorithm_params => :qos_algorithm_params, 
                               :qos_algorithm_type => :qos_algorithm_type, 
                               :runtime_properties => :runtime_properties, 
                               :status_code => :status_code, 
                               :status_detail => :status_detail, 
                               :storage_lock => :storage_lock, 
                               :type => :type, 
                               :unpluggable => :unpluggable, 
                               :userdevice => :userdevice, 
                               :uuid => :uuid, 
                               :metrics => :metrics, 
                               :vdi => :VDI, 
                               :vm => :VM)
  end

  it 'should have 2 aliases' do
    vbd_class.aliases.must_equal(:VDI => :vdi,
                                 :VM => :vm)
  end

  it 'should have 9 default values' do
    vbd_class.default_values.must_equal(:bootable => true,
                                        :mode => 'RW',
                                        :empty => false,
                                        :other_config => { 'owner' => '' },
                                        :qos_supported_algorithms => [],
                                        :qos_algorithm_params => {},
                                        :qos_algorithm_type => '',
                                        :type => 'Disk',
                                        :userdevice => '0')
  end

  it 'should require 2 attributes before save' do
    vbd_class.require_before_save.must_equal([ :vdi, :server ])
  end
end