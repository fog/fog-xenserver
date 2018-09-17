require 'minitest_helper'

describe Fog::XenServer::Compute::Models::HostCpus do
  let(:host_cpus_class) { Fog::XenServer::Compute::Models::HostCpus }

  it 'should be a collection of HostsCpus' do
    host_cpus_class.model.must_equal(Fog::XenServer::Compute::Models::HostCpu)
  end
end