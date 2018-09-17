require 'minitest_helper'

describe Fog::XenServer::Compute do
  describe '.const_missing' do
    before :each do
      Fog::XenServer::Compute::Models::Abc = Class.new
    end

    it 'should look for missing constants in the Models namespace' do
      Fog::XenServer::Compute::Abc.must_equal Fog::XenServer::Compute::Models::Abc
    end
  end
end