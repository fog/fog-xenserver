require 'minitest_helper'

describe Fog::XenServer::Compute::Models::Networks do
  let(:networks_class) { Fog::XenServer::Compute::Models::Networks }

  it 'should be a collection of Networks' do
    networks_class.model.must_equal(Fog::XenServer::Compute::Models::Network)
  end
end