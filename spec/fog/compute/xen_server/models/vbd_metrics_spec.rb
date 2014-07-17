require 'minitest_helper'

describe Fog::Compute::XenServer::Models::VbdMetrics do
  let(:vbd_metrics_class) do
    class Fog::Compute::XenServer::Models::VbdMetrics
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::VbdMetrics
  end

  it 'should associate to a provider class' do
    vbd_metrics_class.provider_class.must_equal('VBD_metrics')
  end

  it 'should have an unique id' do
    vbd_metrics_class.read_identity.must_equal(:reference)
  end

  it 'should have 6 attributes' do
    vbd_metrics_class.attributes.must_equal([ :reference,
                                              :io_read_kbs,
                                              :io_write_kbs,
                                              :last_updated,
                                              :other_config,
                                              :uuid ])
  end

  it "should't have aliases" do
    vbd_metrics_class.aliases.must_equal({})
  end
end