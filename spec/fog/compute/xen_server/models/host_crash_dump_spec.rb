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

  it 'should associate to a provider class' do
    host_crash_dump_class.provider_class.must_equal('host_crashdump')
  end

  it 'should have an unique id' do
    host_crash_dump_class.read_identity.must_equal(:reference)
  end

  it 'should have 6 attributes' do
    host_crash_dump_class.attributes.must_equal([ :reference,
                                                  :other_config,
                                                  :size,
                                                  :timestamp,
                                                  :uuid,
                                                  :__host ])
  end

  it 'should have 1 alias' do
    host_crash_dump_class.aliases.must_equal({ :host => :__host })
  end

  it "shouldn't have default values" do
    host_crash_dump_class.default_values.must_equal({})
  end
end