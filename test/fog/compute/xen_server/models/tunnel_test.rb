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
                                         :other_config,
                                         :status,
                                         :uuid,
                                         :__access_pif,
                                         :__transport_pif ])
  end

  it 'should have 4 aliases' do
    tunnel_class.aliases.must_equal({ :access_PIF => :__access_pif,
                                      :access_pif => :__access_pif,
                                      :transport_PIF => :__transport_pif,
                                      :transport_pif => :__transport_pif })
  end
end