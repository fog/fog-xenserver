module Fog
  module Compute
    class XenServer
      class Real
        # Create a Network
        #
        # @see http://docs.vmd.citrix.com/XenServer/6.0.0/1.0/en_gb/api/?c=network
        #
        def create_network(config = {}, extra_params = {})
          config.reject! { |k,v| v.nil? }

          default_config = {
            :name_label => config[:name] || '',
            # Description is mandatory in XenAPI but we default to empty
            :name_description => config[:description] || '',
            # Mandatory, but can be empty
            :other_config => {}
          }.merge config

          @connection.request(
            {
              :parser => Fog::Parsers::XenServer::Base.new,
              :method => 'network.create'
            },
            default_config
          )
        end
      end
    end
  end
end