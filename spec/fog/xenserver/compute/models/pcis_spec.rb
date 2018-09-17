require 'minitest_helper'

describe Fog::XenServer::Compute::Models::Pcis do
  let(:pcis_class) { Fog::XenServer::Compute::Models::Pcis }

  it 'should be a collection of Pcis' do
    pcis_class.model.must_equal(Fog::XenServer::Compute::Models::Pci)
  end
end