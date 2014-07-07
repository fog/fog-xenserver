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
                                      :xenstore_data,
                                      :__crash_dumps,
                                      :__parent,
                                      :__snapshots,
                                      :__snapshot_of,
                                      :__sr,
                                      :__vbds ])
  end

  it 'should have 10 aliases' do
    vdi_class.aliases.must_equal({ :name_label => :name,
                                   :name_description => :description, 
                                   :parent => :__parent,
                                   :VBDs => :__vbds,
                                   :vbds => :__vbds,
                                   :SR => :__sr,
                                   :sr => :__sr,
                                   :crash_dumps => :__crash_dumps, 
                                   :snapshots => :__snapshots, 
                                   :snapshot_of => :__snapshot_of })
  end
end