require 'minitest_helper'
require 'xmlrpc/datetime'

describe Fog::Compute::XenServer::Models::HostMetrics do
  let(:host_metrics_class) do
    class Fog::Compute::XenServer::Models::HostMetrics
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::HostMetrics
  end
  let(:host_metrics) { Fog::Compute::XenServer::Models::HostMetrics.new }

  it 'should associate to a provider class' do
    host_metrics_class.provider_class.must_equal('host_metrics')
  end

  it 'should have an unique id' do
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

  describe '#last_updated' do
    before :each do
      host_metrics.last_updated = XMLRPC::DateTime.new(2000, 7, 8, 10, 20, 34)
    end

    it  'should be an instance of Time' do
      host_metrics.last_updated.must_be_instance_of(Time)
    end
  end
end