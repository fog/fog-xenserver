require 'minitest_helper'

describe Fog::Compute::XenServer::Models::HostMetrics do
  let(:host_metrics_class) do
    class Fog::Compute::XenServer::Models::HostMetrics
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::HostMetrics
  end

  it 'should return the unique id' do
    host_metrics_class.read_identity.must_equal(:reference)
  end

  it 'should have 7 attributes' do
    host_metrics_class.attributes.must_equal([ :reference,
                                               :last_updated,
                                               :live,
                                               :memory_free,
                                               :memory_total,
                                               :other_config,
                                               :uuid ])
  end

  it "shouldn't have aliases" do
    host_metrics_class.aliases.must_equal({})
  end
end