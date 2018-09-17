require 'minitest_helper'

describe Fog::XenServer::Compute::Models::Vdis do
  let(:vdis_class) { Fog::XenServer::Compute::Models::Vdis }

  it 'should be a collection of Servers' do
    vdis_class.model.must_equal(Fog::XenServer::Compute::Models::Vdi)
  end
end