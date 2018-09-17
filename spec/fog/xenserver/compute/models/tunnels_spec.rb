require 'minitest_helper'

describe Fog::XenServer::Compute::Models::Tunnels do
  let(:tunnels_class) { Fog::XenServer::Compute::Models::Tunnels }

  it 'should be a collection of Servers' do
    tunnels_class.model.must_equal(Fog::XenServer::Compute::Models::Tunnel)
  end
end