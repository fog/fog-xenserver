require 'minitest_helper'

describe Fog do
  describe 'XenServer' do
    it 'should be a module' do
      Fog::XenServer.must_be_instance_of Module
    end
  end
end