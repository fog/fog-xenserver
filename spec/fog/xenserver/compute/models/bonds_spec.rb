require 'minitest_helper'

describe Fog::XenServer::Compute::Models::Bonds do
  let(:bonds_class) { Fog::XenServer::Compute::Models::Bonds }

  it 'should be a collection of Bonds' do
    bonds_class.model.must_equal(Fog::XenServer::Compute::Models::Bond)
  end
end