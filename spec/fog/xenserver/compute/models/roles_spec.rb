require 'minitest_helper'

describe Fog::XenServer::Compute::Models::Roles do
  let(:roles_class) { Fog::XenServer::Compute::Models::Roles }

  it 'should be a collection of Roles' do
    roles_class.model.must_equal(Fog::XenServer::Compute::Models::Role)
  end
end