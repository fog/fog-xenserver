require 'minitest_helper'

describe Fog::XenServer::Compute::Models::StorageRepositories do
  let(:storage_repositories_class) { Fog::XenServer::Compute::Models::StorageRepositories }

  it 'should be a collection of StorageRepositories' do
    storage_repositories_class.model.must_equal(Fog::XenServer::Compute::Models::StorageRepository)
  end
end