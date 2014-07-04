require 'minitest_helper'

describe Fog::Compute::XenServer::Models::StorageRepository do
  let(:storage_repository_class) do
    class Fog::Compute::XenServer::Models::StorageRepository
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::StorageRepository
  end

  it 'should return the unique id' do
    storage_repository_class.read_identity.must_equal(:reference)
  end

  it 'should have 20 attributes' do
    storage_repository_class.attributes.must_equal([ :reference,
                                                     :allowed_operations,
                                                     :blobs,
                                                     :content_type,
                                                     :current_operations,
                                                     :description,
                                                     :introduced_by,
                                                     :local_cache_enabled,
                                                     :name,
                                                     :other_config,
                                                     :__pbds,
                                                     :physical_size,
                                                     :physical_utilisation,
                                                     :shared,
                                                     :sm_config,
                                                     :tags,
                                                     :type,
                                                     :uuid,
                                                     :__vdis,
                                                     :virtual_allocation ])
  end

  it 'should have 4 aliases' do
    storage_repository_class.aliases.must_equal({ :name_label => :name,
                                                  :name_description => :description, 
                                                  :PBDs => :__pbds, 
                                                  :VDIs => :__vdis })
  end
end