require 'minitest_helper'

describe Fog::XenServer::Compute::Models::StorageManagers do
  let(:storage_managers_class) { Fog::XenServer::Compute::Models::StorageManagers }

  it 'should be a collection of StorageManagers' do
    storage_managers_class.model.must_equal(Fog::XenServer::Compute::Models::StorageManager)
  end
end