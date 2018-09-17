require 'minitest_helper'

describe Fog::XenServer::Compute::Models::Hosts do
  let(:hosts_class) { Fog::XenServer::Compute::Models::Hosts }

  it 'should be a collection of Hosts' do
    hosts_class.model.must_equal(Fog::XenServer::Compute::Models::Host)
  end
end