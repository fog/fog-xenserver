require 'minitest_helper'

describe Fog::XenServer::Compute::Models::Pgpus do
  let(:pgpus_class) { Fog::XenServer::Compute::Models::Pgpus }

  it 'should be a collection of Pgpus' do
    pgpus_class.model.must_equal(Fog::XenServer::Compute::Models::Pgpu)
  end
end