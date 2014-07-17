require 'minitest_helper'

describe Fog::Compute::XenServer::Models::PifMetrics do
  let(:pif_metrics_class) do
    class Fog::Compute::XenServer::Models::PifMetrics
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::PifMetrics
  end

  it 'should associate to a provider class' do
    pif_metrics_class.provider_class.must_equal('PIF_metrics')
  end

  it 'should have an unique id' do
    pif_metrics_class.read_identity.must_equal(:reference)
  end

  it 'should have 14 attributes' do
    pif_metrics_class.attributes.must_equal([ :reference,
                                              :carrier,
                                              :device_id,
                                              :device_name,
                                              :duplex,
                                              :io_read_kbs,
                                              :io_write_kbs,
                                              :last_updated,
                                              :other_config,
                                              :pci_bus_path,
                                              :speed,
                                              :uuid,
                                              :vendor_id,
                                              :vendor_name ])
  end

  it "shouldn't have aliases" do
    pif_metrics_class.aliases.must_equal({})
  end
end