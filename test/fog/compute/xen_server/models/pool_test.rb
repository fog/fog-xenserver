require 'minitest_helper'

describe Fog::Compute::XenServer::Models::Pool do
  let(:pool_class) do
    class Fog::Compute::XenServer::Models::Pool
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::Pool
  end

  it 'should return the unique id' do
    pool_class.read_identity.must_equal(:reference)
  end

  it 'should have 28 attributes' do
    pool_class.attributes.must_equal([ :reference,
                                       :blobs,
                                       :description,
                                       :gui_config,
                                       :ha_allow_overcommit,
                                       :ha_configuration,
                                       :ha_enabled,
                                       :ha_host_failures_to_tolerate,
                                       :ha_overcommitted,
                                       :ha_plan_exists_for,
                                       :ha_statefiles,
                                       :name,
                                       :other_config,
                                       :redo_log_enabled,
                                       :redo_log_vdi,
                                       :restrictions,
                                       :tags,
                                       :uuid,
                                       :vswitch_controller,
                                       :wlb_enabled,
                                       :wlb_url,
                                       :wlb_username,
                                       :wlb_verify_cert,
                                       :__crash_dump_sr,
                                       :__default_sr,
                                       :__master,
                                       :__metadata_vdis,
                                       :__suspend_image_sr ])
  end

  it 'should have 11 aliases' do
    pool_class.aliases.must_equal({ :crash_dump_SR => :__crash_dump_sr,
                                    :crash_dump_sr => :__crash_dump_sr,
                                    :name_label => :name,
                                    :name_description => :description,
                                    :default_SR => :__default_sr,
                                    :default_sr => :__default_sr,
                                    :master => :__master,
                                    :metadata_VDIs => :__metadata_vdis,
                                    :metadata_vdis => :__metadata_vdis,
                                    :suspend_image_SR => :__suspend_image_sr,
                                    :suspend_image_sr => :__suspend_image_sr })
  end
end