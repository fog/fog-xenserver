require 'minitest_helper'

describe Fog::Compute::XenServer::Models::Vdi do
  let(:vdi_class) do
    class Fog::Compute::XenServer::Models::Vdi
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::Vdi
  end

  it 'should associate to a provider class' do
    vdi_class.provider_class.must_equal('VDI')
  end

  it 'should have a collection name' do
    vdi_class.collection_name.must_equal(:vdis)
  end

  it 'should have an unique id' do
    vdi_class.read_identity.must_equal(:reference)
  end

  it 'should have 25 attributes' do
    vdi_class.attributes.must_equal([ :reference,
                                      :allowed_operations,
                                      :allow_caching,
                                      :current_operations,
                                      :description,
                                      :is_a_snapshot,
                                      :location,
                                      :managed,
                                      :metadata_latest,
                                      :metadata_of_pool,
                                      :missing,
                                      :name,
                                      :on_boot,
                                      :other_config,
                                      :physical_utilisation,
                                      :read_only,
                                      :sharable,
                                      :sm_config,
                                      :snapshot_time,
                                      :storage_lock,
                                      :tags,
                                      :type,
                                      :uuid,
                                      :virtual_size,
                                      :xenstore_data ])
  end

  it 'should have 4 aliases' do
    vdi_class.aliases.must_equal(:name_label => :name,
                                 :name_description => :description,
                                 :SR => :sr,
                                 :VBDs => :vbds)
  end

  it 'should have 5 default values' do
    vdi_class.default_values.must_equal(:other_config => {},
                                        :read_only => false,
                                        :sharable => false,
                                        :tags => 'system',
                                        :virtual_size => '8589934592')
  end

  it 'should require 2 attributes before save' do
    vdi_class.require_before_save.must_equal([ :name, :storage_repository ])
  end
end