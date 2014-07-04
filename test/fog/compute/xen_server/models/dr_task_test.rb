require 'minitest_helper'

describe Fog::Compute::XenServer::Models::DrTask do
  let(:dr_task_class) do
    class Fog::Compute::XenServer::Models::DrTask
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::DrTask
  end

  it 'should return the unique id' do
    dr_task_class.read_identity.must_equal(:reference)
  end

  it 'should have 3 attributes' do
    dr_task_class.attributes.must_equal([ :reference,
                                          :__introduced_srs,
                                          :uuid ])
  end

  it 'should have 1 alias' do
    dr_task_class.aliases.must_equal({ :introduced_SRs => :__introduced_srs })
  end
end