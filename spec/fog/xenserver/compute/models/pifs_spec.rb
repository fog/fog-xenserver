require 'minitest_helper'

describe Fog::XenServer::Compute::Models::Pifs do
  let(:pifs_class) { Fog::XenServer::Compute::Models::Pifs }

  it 'should be a collection of Pifs' do
    pifs_class.model.must_equal(Fog::XenServer::Compute::Models::Pif)
  end
end