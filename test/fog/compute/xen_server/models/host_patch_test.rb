require 'minitest_helper'

describe Fog::Compute::XenServer::Models::HostPatch do
  let(:host_patch_class) do
    class Fog::Compute::XenServer::Models::HostPatch
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::HostPatch
  end

  it 'should return the unique id' do
    host_patch_class.read_identity.must_equal(:reference)
  end

  it 'should have 11 attributes' do
    host_patch_class.attributes.must_equal([ :reference,
                                             :applied,
                                             :description,
                                             :__host,
                                             :name,
                                             :other_config,
                                             :__pool_patch,
                                             :size,
                                             :timestamp_applied,
                                             :uuid,
                                             :version ])
  end

  it 'should have 4 aliases' do
    host_patch_class.aliases.must_equal({ :host => :__host,
                                          :name_description => :description,
                                          :name_label => :name,
                                          :pool_patch => :__pool_patch })
  end
end