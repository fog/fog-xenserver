require 'minitest_helper'

describe Fog::XenServer::Compute::Models::DrTasks do
  let(:dr_tasks_class) { Fog::XenServer::Compute::Models::DrTasks }

  it 'should be a collection of DrTasks' do
    dr_tasks_class.model.must_equal(Fog::XenServer::Compute::Models::DrTask)
  end
end