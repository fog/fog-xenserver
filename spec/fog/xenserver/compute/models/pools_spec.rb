require 'minitest_helper'

describe Fog::XenServer::Compute::Models::Pools do
  let(:pools_class) { Fog::XenServer::Compute::Models::Pools }

  it 'should be a collection of Pools' do
    pools_class.model.must_equal(Fog::XenServer::Compute::Models::Pool)
  end
end