require 'minitest_helper'

describe Fog::XenServer::Compute::Models::PifsMetrics do
  let(:pifs_metrics_class) { Fog::XenServer::Compute::Models::PifsMetrics }

  it 'should be a collection of PifsMetrics' do
    pifs_metrics_class.model.must_equal(Fog::XenServer::Compute::Models::PifMetrics)
  end
end