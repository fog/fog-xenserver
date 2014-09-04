module Fog
  module Compute
    class XenServer
      class Real
        #
        # Create a storage repository (SR)
        #
        # @see http://docs.vmd.citrix.com/XenServer/6.0.0/1.0/en_gb/api/?c=SR
        #
        # @param [String] host_ref host reference
        # @param [String] name_label repository label
        # @param [String] type storage repository type
        # @param [String] name_description storage repository description
        # @param [Hash]   device_config used to specify block device path, like
        # { :device => /dev/sdb } for example
        # @param [String] physical_size '0' will use the whole device (FIXME
        # needs confirmation)
        # @param [String] content_type the type of the SR's content.
        # According to Citrix documentation, used only to distinguish ISO
        # libraries from other SRs. Set it to 'iso' for storage repositories
        # that store a library of ISOs, 'user' or '' (empty) otherwise.
        # @see http://docs.vmd.citrix.com/XenServer/6.1.0/1.0/en_gb/reference.html#cli-xe-commands_sr
        # @param [String] shared
        #
        # @return [String] an OpaqueRef to the storage repository
        def create_sr(config = {}, extra_params = {})
          host_ref = extra_params.delete(:host_ref)
          name_label = config[:name]
          type = config[:type]
          name_description = config[:description]
          device_config = extra_params.fetch(:device_config, {})
          physical_size = config[:physical_size]
          content_type = config[:content_type]
          shared = config[:shared]
          sm_config = config[:sm_config]
          @connection.request({ :parser => Fog::Parsers::XenServer::Base.new, :method => 'SR.create' },
                              host_ref, device_config, physical_size, name_label, name_description, type,
                              content_type, shared, sm_config)
        end
      end
    end
  end
end