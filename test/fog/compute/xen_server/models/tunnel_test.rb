require 'minitest_helper'

describe Fog::Compute::XenServer::Models::Tunnel do
  let(:tunnel_class) do
    class Fog::Compute::XenServer::Models::Tunnel
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::Tunnel
  end

  it 'should return the unique id' do
    tunnel_class.read_identity.must_equal(:reference)
  end

  it 'should have 6 attributes' do
    tunnel_class.attributes.must_equal([ :reference,
                                         :access_pif,
                                         :other_config,
                                         :status,
                                         :transport_pif,
                                         :uuid ])
  end

  it 'should have 2 aliases' do
    tunnel_class.aliases.must_equal({ :access_PIF => :access_pif,
                                       :transport_PIF => :transport_pif })
  end
end