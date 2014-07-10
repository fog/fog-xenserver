module Fog
  module Compute
    class XenServer
      module Models
        class Network < Fog::Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=network

          provider_class :network

          identity :reference

          attribute :allowed_operations
          attribute :blobs
          attribute :bridge
          attribute :current_operations
          attribute :default_locking_mode
          attribute :description,         :aliases => :name_description
          attribute :mtu,                 :aliases => :MTU
          attribute :name,                :aliases => :name_label
          attribute :other_config
          attribute :tags
          attribute :uuid

          has_many :pifs,  :pifs,         :aliases => :PIFs
          has_many :vifs,  :vifs,         :aliases => :VIFs

          # Creates a new network
          #
          #     service = Fog::Compute[:xenserver]
          #
          #     # create network 'foonet'
          #     net = service.networks.create :name => 'foonet',
          #                                   :description => 'test network'
          #
          # @return [Boolean]
          #
          def save
            requires :name
            ref = service.create_network name, attributes
            data = service.get_record ref, 'network'
            merge_attributes data
            true
          end
        end
      end
    end
  end
end