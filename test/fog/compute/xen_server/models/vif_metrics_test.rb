require 'minitest_helper'

describe Fog::Compute::XenServer::Models::VifMetrics do
  let(:vif_metrics_class) do
    class Fog::Compute::XenServer::Models::VifMetrics
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::VifMetrics
  end

  it 'should return the unique id' do
    vif_metrics_class.read_identity.must_equal(:reference)
  end

  it 'should have 6 attributes' do
    vif_metrics_class.attributes.must_equal([ :reference,
                                              :io_read_kbs,
                                              :io_write_kbs,
                                              :last_updated,
                                              :other_config,
                                              :uuid ])
  end

  it 'should have no aliases' do
    vif_metrics_class.aliases.must_equal({})
  end
end