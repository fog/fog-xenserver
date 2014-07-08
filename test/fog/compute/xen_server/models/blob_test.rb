require 'minitest_helper'

describe Fog::Compute::XenServer::Models::Blob do
  let(:blob_class) do
    class Fog::Compute::XenServer::Models::Blob
      def self.read_identity
        instance_variable_get('@identity')
      end

      def self.read_provider_class
        instance_variable_get('@provider_class')
      end
    end
    Fog::Compute::XenServer::Models::Blob
  end

  it 'should associate to a provider class' do
    blob_class.read_provider_class.must_equal('blob')
  end

  it 'should have an unique id' do
    blob_class.read_identity.must_equal(:reference)
  end

  it 'should have 8 attributes' do
    blob_class.attributes.must_equal([ :reference,
                                       :description,
                                       :last_updated,
                                       :mime_type,
                                       :name,
                                       :public,
                                       :size,
                                       :uuid ])
  end

  it 'should have 2 aliases' do
    blob_class.aliases.must_equal({ :name_description => :description,
                                    :name_label => :name })
  end
end