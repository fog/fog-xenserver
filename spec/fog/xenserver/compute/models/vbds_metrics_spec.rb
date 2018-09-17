require 'minitest_helper'

describe Fog::XenServer::Compute::Models::VbdsMetrics do
  let(:vbds_metrics_class) { Fog::XenServer::Compute::Models::VbdsMetrics }

  it 'should be a collection of Servers' do
    vbds_metrics_class.model.must_equal(Fog::XenServer::Compute::Models::VbdMetrics)
  end
end