require 'minitest_helper'

describe Fog::Compute::XenServer::Models::GuestMetrics do
  let(:guest_metrics_class) do
    class Fog::Compute::XenServer::Models::GuestMetrics
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::GuestMetrics
  end

  it 'should return the unique id' do
    guest_metrics_class.read_identity.must_equal(:reference)
  end

  it 'should have 12 attributes' do
    guest_metrics_class.attributes.must_equal([ :reference,
                                                :disk,
                                                :last_updated,
                                                :live,
                                                :memory,
                                                :networks,
                                                :os_version,
                                                :other,
                                                :other_config,
                                                :pv_drivers_up_to_date,
                                                :pv_drivers_version,
                                                :uuid ])
  end

  it 'should have 2 aliases' do
    guest_metrics_class.aliases.must_equal({ :PV_drivers_up_to_date => :pv_drivers_up_to_date,
                                             :PV_drivers_version => :pv_drivers_version })
  end
end