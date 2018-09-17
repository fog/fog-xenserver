require 'minitest_helper'

describe Fog::XenServer::Compute::Models::Vmpps do
  let(:vmpps_class) { Fog::XenServer::Compute::Models::Vmpps }

  it 'should be a collection of Servers' do
    vmpps_class.model.must_equal(Fog::XenServer::Compute::Models::Vmpp)
  end
end