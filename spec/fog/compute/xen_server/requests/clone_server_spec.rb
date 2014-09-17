require 'minitest_helper'

describe "#clone_vm" do

  let(:connection) do
    VCR.use_cassette('open_connection') do
      Fog::Compute.new(:provider => 'XenServer')
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
    VCR.use_cassette('clone_template') do
      @template.clone('Awesome Template')
    end
  end

  it 'should create a new template' do
    @template.uuid.wont_equal(nil)
    @template.uuid.wont_equal(@template_uuid)
    @template.name.must_equal('Awesome Template')
  end
end