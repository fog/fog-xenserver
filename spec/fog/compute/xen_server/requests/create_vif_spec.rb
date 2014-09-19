require 'minitest_helper'

describe "#create_vif" do
  let(:connection) do
    VCR.use_cassette('open_connection') do
      Fog::Compute.new(:provider => 'XenServer',
                       :xenserver_url => '192.168.10.2',
                       :xenserver_username => 'root',
                       :xenserver_password => '123456')
    end
  end
  let(:network) do
    VCR.use_cassette('get_network_by_name') do
      connection.networks.get_by_name('Pool-wide network associated with eth0')
    end
  end
  let(:vm) do
    VCR.use_cassette('get_vm_by_name') do
      connection.servers.get_by_name('vm-teste')
    end
  end

  before :each do
    @vif = connection.vifs.new
    @vif.network = network
    @vif.vm = vm
    VCR.use_cassette('vif_set_device_number') do
      @vif.set_device_number
    end
    VCR.use_cassette('create_vif') do
      @vif.save
    end
  end

  it 'should create a new vif' do
    @vif.persisted?.must_equal(true)
  end
end