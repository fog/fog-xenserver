module Fog
  module Compute
    class XenServer
      class Real
        #
        # Create a VLAN
        #
        # @see http://docs.vmd.citrix.com/XenServer/6.0.0/1.0/en_gb/api/?c=VLAN
        #
        def create_vlan(config = {}, extra_params = {})
          pif_ref = extra_params.delete(:pif_ref)
          vlan_id = config.delete(:tag)
          network_ref = extra_params.delete(:network_ref)
          pif_ref = pif_ref.reference if pif_ref.kind_of? Fog::Compute::XenServer::Pif
          network_ref = network_ref.reference if network_ref.kind_of? Fog::Compute::XenServer::Network
          @connection.request(
            {
              :parser => Fog::Parsers::XenServer::Base.new,
              :method => 'VLAN.create'
            },
            pif_ref, vlan_id.to_s, network_ref
          )
        end
      end
    end
  end
end