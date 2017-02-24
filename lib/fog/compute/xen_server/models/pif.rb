module Fog
  module Compute
    class XenServer
      module Models
        class Pif < Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=PIF

          provider_class :PIF
          collection_name :pifs

          identity :reference

          attribute :disallow_unplug
          attribute :currently_attached
          attribute :device
          attribute :device_name
          attribute :dns,                         :aliases => :DNS,   :as => :DNS
          attribute :gateway
          attribute :ip,                          :aliases => :IP,    :as => :IP
          attribute :ip_configuration_mode
          attribute :ipv6,                        :aliases => :IPv6,  :as => :IPv6
          attribute :ipv6_configuration_mode
          attribute :ipv6_gateway
          attribute :mac,                         :aliases => :MAC,   :as => :MAC
          attribute :management
          attribute :mtu,                         :aliases => :MTU,   :as => :MTU
          attribute :netmask
          attribute :other_config
          attribute :physical
          attribute :primary_address_type
          attribute :status_code
          attribute :status_detail
          attribute :vlan,                        :aliases => :VLAN,  :as => :VLAN
          attribute :uuid

          has_one_identity :bond_master_of,            :bonds
          has_one_identity :bond_slave_of,             :bonds
          has_one_identity :host,                      :hosts
          has_one_identity :metrics,                   :pif_metrics
          has_one_identity :network,                   :networks
          has_one_identity :tunnel_access_pif_of,      :tunnels,     :aliases => :tunnel_access_PIF_of,     :as => :tunnel_access_PIF_of
          has_one_identity :tunnel_transport_pif_of,   :tunnels,     :aliases => :tunnel_transport_PIF_of,  :as => :tunnel_transport_PIF_of
          has_one_identity :vlan_master_of,            :vlans,       :aliases => :VLAN_master_of,           :as => :VLAN_master_of
          has_one_identity :vlan_slave_of,             :vlans,       :aliases => :VLAN_slave_of,            :as => :VLAN_slave_of

          define_methods(%i(db_introduce introduce scan))
        end
      end
    end
  end
end
