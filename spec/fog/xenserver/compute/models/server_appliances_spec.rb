require 'minitest_helper'

describe Fog::XenServer::Compute::Models::ServerAppliances do
  let(:server_appliances_class) { Fog::XenServer::Compute::Models::ServerAppliances }

  it 'should be a collection of ServerAppliances' do
    server_appliances_class.model.must_equal(Fog::XenServer::Compute::Models::ServerAppliance)
  end
end