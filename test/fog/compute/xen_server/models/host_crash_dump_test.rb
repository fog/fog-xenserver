require 'minitest_helper'

describe Fog::Compute::XenServer::Models::HostCrashDump do
  let(:host_crash_dump_class) do
    class Fog::Compute::XenServer::Models::HostCrashDump
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::HostCrashDump
  end

  it 'should return the unique id' do
    host_crash_dump_class.read_identity.must_equal(:reference)
  end

  it 'should have 6 attributes' do
    host_crash_dump_class.attributes.must_equal([ :reference,
                                                  :__host,
                                                  :other_config,
                                                  :size,
                                                  :timestamp,
                                                  :uuid ])
  end

  it 'should have 1 alias' do
    host_crash_dump_class.aliases.must_equal({ :host => :__host })
  end
end