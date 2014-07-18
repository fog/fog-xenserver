require 'minitest_helper'

describe Fog::Compute::XenServer::Models::Pif do
  let(:pif_class) do
    class Fog::Compute::XenServer::Models::Pif
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::Pif
  end

  it 'should associate to a provider class' do
    pif_class.provider_class.must_equal('PIF')
  end

  it 'should have an unique id' do
    pif_class.read_identity.must_equal(:reference)
  end

  it 'should have 32 attributes' do
    pif_class.attributes.must_equal([ :reference,
                                      :disallow_unplug,
                                      :currently_attached,
                                      :device,
                                      :device_name,
                                      :dns,
                                      :gateway,
                                      :ip,
                                      :ip_configuration_mode,
                                      :ipv6,
                                      :ipv6_configuration_mode,
                                      :ipv6_gateway,
                                      :mac,
                                      :management,
                                      :mtu,
                                      :netmask,
                                      :other_config,
                                      :physical,
                                      :primary_address_type,
                                      :status_code,
                                      :status_detail,
                                      :vlan,
                                      :uuid,
                                      :__bond_master_of,
                                      :__bond_slave_of,
                                      :__host,
                                      :__metrics,
                                      :__network,
                                      :__tunnel_access_pif_of,
                                      :__tunnel_transport_pif_of,
                                      :__vlan_master_of,
                                      :__vlan_slave_of ])
  end

  it 'should have 19 aliases' do
    pif_class.aliases.must_equal({ :bond_master_of => :__bond_master_of,
                                   :bond_slave_of => :__bond_slave_of, 
                                   :MAC => :mac,
                                   :DNS => :dns, 
                                   :IP => :ip, 
                                   :IPv6 => :ipv6, 
                                   :MTU => :mtu, 
                                   :network => :__network,
                                   :metrics => :__metrics,
                                   :tunnel_access_PIF_of => :__tunnel_access_pif_of,
                                   :tunnel_access_pif_of => :__tunnel_access_pif_of,
                                   :tunnel_transport_PIF_of => :__tunnel_transport_pif_of,
                                   :tunnel_transport_pif_of => :__tunnel_transport_pif_of,
                                   :VLAN => :vlan,
                                   :VLAN_master_of => :__vlan_master_of,
                                   :vlan_master_of => :__vlan_master_of,
                                   :VLAN_slave_of => :__vlan_slave_of,
                                   :vlan_slave_of => :__vlan_slave_of,
                                   :host => :__host })
  end

  it "shouldn't have default values" do
    pif_class.default_values.must_equal({})
  end
end