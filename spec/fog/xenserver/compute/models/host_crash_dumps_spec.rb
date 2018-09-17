require 'minitest_helper'

describe Fog::XenServer::Compute::Models::HostCrashDumps do
  let(:host_crash_dumps_class) { Fog::XenServer::Compute::Models::HostCrashDumps }

  it 'should be a collection of HostCrashDumps' do
    host_crash_dumps_class.model.must_equal(Fog::XenServer::Compute::Models::HostCrashDump)
  end
end