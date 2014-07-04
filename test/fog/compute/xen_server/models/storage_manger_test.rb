require 'minitest_helper'

describe Fog::Compute::XenServer::Models::StorageManager do
  let(:storage_manager_class) do
    class Fog::Compute::XenServer::Models::StorageManager
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::StorageManager
  end

  it 'should return the unique id' do
    storage_manager_class.read_identity.must_equal(:reference)
  end

  it 'should have 14 attributes' do
    storage_manager_class.attributes.must_equal([ :reference,
                                                  :capabilities,
                                                  :configuration,
                                                  :copyright,
                                                  :description,
                                                  :driver_filename,
                                                  :features,
                                                  :name,
                                                  :other_config,
                                                  :required_api_version,
                                                  :type,
                                                  :uuid,
                                                  :vendor,
                                                  :version ])
  end

  it 'should have 2 aliases' do
    storage_manager_class.aliases.must_equal({ :name_description => :description,
                                               :name_label => :name })
  end
end