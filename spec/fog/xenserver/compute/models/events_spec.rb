require 'minitest_helper'

describe Fog::XenServer::Compute::Models::Events do
  let(:events_class) { Fog::XenServer::Compute::Models::Events }

  it 'should be a collection of Blobs' do
    events_class.model.must_equal(Fog::XenServer::Compute::Models::Event)
  end
end