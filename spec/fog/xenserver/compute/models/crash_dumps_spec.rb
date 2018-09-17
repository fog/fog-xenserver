require 'minitest_helper'

describe Fog::XenServer::Compute::Models::CrashDumps do
  let(:crash_dumps_class) { Fog::XenServer::Compute::Models::CrashDumps }

  it 'should be a collection of CrashDumps' do
    crash_dumps_class.model.must_equal(Fog::XenServer::Compute::Models::CrashDump)
  end
end