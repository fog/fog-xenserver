require 'minitest_helper'

describe Fog::XenServer::Compute::Models::GpuGroups do
  let(:gpu_groups_class) { Fog::XenServer::Compute::Models::GpuGroups }

  it 'should be a collection of GpuGroups' do
    gpu_groups_class.model.must_equal(Fog::XenServer::Compute::Models::GpuGroup)
  end
end