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

  it 'should return the unique id' do
    vdi_class.read_identity.must_equal(:reference)
  end

  it 'should have 31 attributes' do
    vdi_class.attributes.must_equal([ :reference,
                                      :allowed_operations,
                                      :allow_caching,
                                      :__crash_dumps,
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
                                      :__parent,
                                      :physical_utilisation,
                                      :read_only,
                                      :sharable,
                                      :sm_config,
                                      :__snapshots,
                                      :__snapshot_of,
                                      :snapshot_time,
                                      :__sr,
                                      :storage_lock,
                                      :tags,
                                      :type,
                                      :uuid,
                                      :__vbds,
                                      :virtual_size,
                                      :xenstore_data ])
  end

  it 'should have 8 aliases' do
    vdi_class.aliases.must_equal({ :name_label => :name,
                                   :name_description => :description, 
                                   :parent => :__parent, 
                                   :VBDs => :__vbds, 
                                   :SR => :__sr, 
                                   :crash_dumps => :__crash_dumps, 
                                   :snapshots => :__snapshots, 
                                   :snapshot_of => :__snapshot_of })
  end
end