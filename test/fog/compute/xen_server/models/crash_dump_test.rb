require 'minitest_helper'

describe Fog::Compute::XenServer::Models::CrashDump do
  let(:crash_dump_class) do
    class Fog::Compute::XenServer::Models::CrashDump
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::CrashDump
  end

  it 'should return the unique id' do
    crash_dump_class.read_identity.must_equal(:reference)
  end

  it 'should have 5 attributes' do
    crash_dump_class.attributes.must_equal([ :reference,
                                             :other_config,
                                             :uuid,
                                             :__vdi,
                                             :__vm ])
  end

  it 'should have 4 aliases' do
    crash_dump_class.aliases.must_equal({ :VDI => :__vdi,
                                          :vdi => :__vdi,
                                          :VM => :__vm,
                                          :vm => :__vm })
  end
end