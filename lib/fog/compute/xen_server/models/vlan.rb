module Fog
  module Compute
    class XenServer
      module Models
        class Vlan < Fog::Model
          # API Reference here:
          # @see http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=VLAN

          provider_class :VLAN

          identity :reference

          attribute :other_config
          attribute :tag,                :type => :integer
          attribute :uuid

          has_one   :tagged_pif,   :pifs,   :aliases => :tagged_PIF
          has_one   :untagged_pif, :pifs,   :aliases => :untagged_PIF

          # Creates a new VLAN.
          #
          #     service = Fog::Compute[:xenserver]
          #
          #     # create a network 'foo-net'
          #     net = service.networks.create :name => 'foo-net'
          #
          #     # get the eth0 physical interface where the
          #     # VLAN subinterface will be added
          #     pif = service.pifs.find { |p| p.device == 'eth0' and p.physical }
          #
          #     Fog::Compute[:xenserver].vlans.create :tag => 123,
          #                                           :network => net,
          #                                           :pif => pif
          def save
            requires :tag
            pif = attributes[:pif]
            net = attributes[:network]
            unless pif and net
              raise Fog::Error.new 'save requires :pif and :network attributes'
            end
            ref = service.create_vlan attributes[:pif].reference,
                                      tag,
                                      attributes[:network].reference
            data = service.get_record ref, 'VLAN'
            merge_attributes data
            true
          end
        end
      end
    end
  end
end