module Fog
  module Compute
    class XenServer
      module Models
        class Vlan < Fog::Model
          # API Reference here:
          # @see http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=VLAN

          provider_class :VLAN
          collection_name :vlans

          identity :reference

          attribute :other_config
          attribute :tag,                :type => :integer
          attribute :uuid

          has_one   :tagged_pif,   :pifs,   :aliases => :tagged_PIF
          has_one   :untagged_pif, :pifs,   :aliases => :untagged_PIF

          require_before_save :tag

          def save(pif, network)
            require_creation_attributes
            ref = service.create_vlan(pif, tag, network)
            merge_attributes collection.get(ref).attributes
            true
          end
        end
      end
    end
  end
end