require 'minitest_helper'

describe Fog::XenServer::Compute::Models::Vtpms do
  let(:vtpms_class) { Fog::XenServer::Compute::Models::Vtpms }

  it 'should be a collection of Servers' do
    vtpms_class.model.must_equal(Fog::XenServer::Compute::Models::Vtpm)
  end
end