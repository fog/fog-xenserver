require 'minitest_helper'

describe Fog::Compute::XenServer::Models::Console do
  let(:console_class) do
    class Fog::Compute::XenServer::Models::Console
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::Console
  end

  it 'should return the unique id' do
    console_class.read_identity.must_equal(:reference)
  end

  it 'should have 6 attributes' do
    console_class.attributes.must_equal([ :reference,
                                          :location,
                                          :other_config,
                                          :protocol,
                                          :uuid,
                                          :__vm ])
  end

  it 'should have 1 alias' do
    console_class.aliases.must_equal({ :VM => :__vm })
  end
end