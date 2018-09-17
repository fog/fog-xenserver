require 'minitest_helper'

describe Fog::XenServer::Compute::Models::Pbds do
  let(:pbds_class) { Fog::XenServer::Compute::Models::Pbds }

  it 'should be a collection of Pbds' do
    pbds_class.model.must_equal(Fog::XenServer::Compute::Models::Pbd)
  end
end