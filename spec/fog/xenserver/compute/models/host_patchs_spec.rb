require 'minitest_helper'

describe Fog::XenServer::Compute::Models::HostPatchs do
  let(:host_patchs_class) { Fog::XenServer::Compute::Models::HostPatchs }

  it 'should be a collection of HostPatchs' do
    host_patchs_class.model.must_equal(Fog::XenServer::Compute::Models::HostPatch)
  end
end