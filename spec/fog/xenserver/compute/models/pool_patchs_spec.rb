require 'minitest_helper'

describe Fog::XenServer::Compute::Models::PoolPatchs do
  let(:pool_patchs_class) { Fog::XenServer::Compute::Models::PoolPatchs }

  it 'should be a collection of PoolPatchs' do
    pool_patchs_class.model.must_equal(Fog::XenServer::Compute::Models::PoolPatch)
  end
end