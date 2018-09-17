require 'minitest_helper'

describe Fog::XenServer::Compute::Models::VifsMetrics do
  let(:vifs_metrics_class) { Fog::XenServer::Compute::Models::VifsMetrics }

  it 'should be a collection of Servers' do
    vifs_metrics_class.model.must_equal(Fog::XenServer::Compute::Models::VifMetrics)
  end
end