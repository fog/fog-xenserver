module Fog
  module Compute
    class XenServer
      class Real
        def create_server_raw(config = {})
          @connection.request({:parser => Fog::Parsers::XenServer::Base.new, :method => 'VM.create' }, config)
        end

        def create_server(config = {}, extra_params = {})
          networks = extra_params.fetch(:networks, [])
          auto_start = extra_params.fetch(:auto_start, true)
          name_label = config.fetch(:name, '')
          template = config.fetch(:template_name, nil)

          return create_server_raw(config) if template.nil?

          raise "Invalid networks argument" unless networks.kind_of? Array

          if template.kind_of? String
            template_string = template
            # try template by UUID
            template = servers.templates.find { |s| s.uuid == template_string }
            if template.nil?
              # Try with the template name just in case
              template = servers.get get_by_name(template_string, 'VM')
            end
          end

          raise "Template #{template_string} does not exist" if template.allowed_operations.nil?
          raise 'Clone Operation not Allowed' unless template.allowed_operations.include?('clone')

          # Clone the VM template
          ref = clone_server name_label, template.reference
          # Add additional NICs
          networks.each do |n|
            create_vif ref, n.reference
          end
          if auto_start
            @connection.request({:parser => Fog::Parsers::XenServer::Base.new, :method => 'VM.provision'}, ref)
            start_vm( ref )
          end

          ref
        end

        alias_method :create_vm, :create_server
      end
    end
  end
end
