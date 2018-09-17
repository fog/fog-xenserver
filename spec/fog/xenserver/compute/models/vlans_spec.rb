require 'minitest_helper'

describe Fog::XenServer::Compute::Models::Vlans do
  let(:vlans_class) { Fog::XenServer::Compute::Models::Vlans }

  it 'should be a collection of Servers' do
    vlans_class.model.must_equal(Fog::XenServer::Compute::Models::Vlan)
  end
end