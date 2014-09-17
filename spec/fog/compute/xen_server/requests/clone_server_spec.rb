require 'minitest_helper'

describe "#clone_vm" do
  let(:connection) do
    VCR.use_cassette('open_connection') do
      Fog::Compute.new(:provider => 'XenServer',
                       :xenserver_url => '192.168.10.2',
                       :xenserver_username => 'root',
                       :xenserver_password => '123456')
    end
  end
  let(:servers) do
    VCR.use_cassette('get_all_servers') do
      connection.servers.all
    end
  end

  before :each do
    @template = servers.first
    @template_uuid = @template.uuid
    VCR.use_cassette('clone_server') do
      @template.clone('Awesome Server')
    end
  end

  it 'should create a new template' do
    @template.uuid.wont_equal(nil)
    @template.uuid.wont_equal(@template_uuid)
    @template.name.must_equal('Awesome Server')
  end
end