require 'minitest_helper'

describe Fog::XenServer::Compute::Models::Vbds do
  let(:vbds_class) { Fog::XenServer::Compute::Models::Vbds }

  it 'should be a collection of Servers' do
    vbds_class.model.must_equal(Fog::XenServer::Compute::Models::Vbd)
  end
end