require 'minitest_helper'

describe Fog::XenServer::Compute::Models::Blobs do
  let(:blobs_class) { Fog::XenServer::Compute::Models::Blobs }

  it 'should be a collection of Blobs' do
    blobs_class.model.must_equal(Fog::XenServer::Compute::Models::Blob)
  end
end