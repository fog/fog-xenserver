require 'minitest_helper'

describe Fog::XenServer::Compute::Models::Vifs do
  let(:vifs_class) { Fog::XenServer::Compute::Models::Vifs }

  it 'should be a collection of Servers' do
    vifs_class.model.must_equal(Fog::XenServer::Compute::Models::Vif)
  end
end