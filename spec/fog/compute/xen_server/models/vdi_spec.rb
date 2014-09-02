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

  it 'should have 6 associations' do
    vdi_class.associations.must_equal(:crash_dumps => :crash_dumps, 
                                      :parent => :vdis, 
                                      :snapshots => :vdis, 
                                      :snapshot_of => :vdis, 
                                      :sr => :storage_repositories, 
                                      :vbds => :vbds)
  end

  it 'should have 31 masks' do
    vdi_class.masks.must_equal(:reference => :reference, 
                               :allowed_operations => :allowed_operations, 
                               :allow_caching => :allow_caching, 
                               :current_operations => :current_operations, 
                               :description => :description, 
                               :is_a_snapshot => :is_a_snapshot, 
                               :location => :location, 
                               :managed => :managed, 
                               :metadata_latest => :metadata_latest, 
                               :metadata_of_pool => :metadata_of_pool, 
                               :missing => :missing, 
                               :name => :name, 
                               :on_boot => :on_boot, 
                               :other_config => :other_config, 
                               :physical_utilisation => :physical_utilisation, 
                               :read_only => :read_only, 
                               :sharable => :sharable, 
                               :sm_config => :sm_config, 
                               :snapshot_time => :snapshot_time, 
                               :storage_lock => :storage_lock, 
                               :tags => :tags, 
                               :type => :type, 
                               :uuid => :uuid, 
                               :virtual_size => :virtual_size, 
                               :xenstore_data => :xenstore_data, 
                               :crash_dumps => :crash_dumps, 
                               :parent => :parent, 
                               :snapshots => :snapshots, 
                               :snapshot_of => :snapshot_of, 
                               :sr => :SR, 
                               :vbds => :VBDs)
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