require 'minitest_helper'

describe Fog::XenServer::Compute::Models::GuestsMetrics do
  let(:guests_metrics_class) { Fog::XenServer::Compute::Models::GuestsMetrics }

  it 'should be a collection of GuestsMetrics' do
    guests_metrics_class.model.must_equal(Fog::XenServer::Compute::Models::GuestMetrics)
  end
end