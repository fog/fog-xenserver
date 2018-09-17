require 'minitest_helper'

describe Fog::XenServer::Compute::Models::Servers do
  let(:servers_class) { Fog::XenServer::Compute::Models::Servers }

  it 'should be a collection of Servers' do
    servers_class.model.must_equal(Fog::XenServer::Compute::Models::Server)
  end
end