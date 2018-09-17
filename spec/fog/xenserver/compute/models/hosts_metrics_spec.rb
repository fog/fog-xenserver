require 'minitest_helper'

describe Fog::XenServer::Compute::Models::HostsMetrics do
  let(:hosts_metrics_class) { Fog::XenServer::Compute::Models::HostsMetrics }

  it 'should be a collection of HostsMetrics' do
    hosts_metrics_class.model.must_equal(Fog::XenServer::Compute::Models::HostMetrics)
  end
end