require 'minitest_helper'

describe Fog::Compute::XenServer::Models::Vtpm do
  let(:vtpm_class) do
    class Fog::Compute::XenServer::Models::Vtpm
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::Vtpm
  end

  it 'should return the unique id' do
    vtpm_class.read_identity.must_equal(:reference)
  end

  it 'should have 4 attributes' do
    vtpm_class.attributes.must_equal([ :reference,
                                       :uuid,
                                       :__backend,
                                       :__vm ])
  end

  it 'should have 2 aliases' do
    vtpm_class.aliases.must_equal({ :backend => :__backend,
                                    :vm => :__vm })
  end
end