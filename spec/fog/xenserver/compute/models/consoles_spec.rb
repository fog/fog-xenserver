require 'minitest_helper'

describe Fog::XenServer::Compute::Models::Consoles do
  let(:consoles_class) { Fog::XenServer::Compute::Models::Consoles }

  it 'should be a collection of Consoles' do
    consoles_class.model.must_equal(Fog::XenServer::Compute::Models::Console)
  end
end