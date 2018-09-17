require 'minitest_helper'

describe Fog::XenServer::Compute::Models::ServersMetrics do
  let(:servers_metrics_class) { Fog::XenServer::Compute::Models::ServersMetrics }

  it 'should be a collection of ServersMetrics' do
    servers_metrics_class.model.must_equal(Fog::XenServer::Compute::Models::ServerMetrics)
  end
end