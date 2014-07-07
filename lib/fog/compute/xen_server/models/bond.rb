module Fog
  module Compute
    class XenServer
      module Models
        class Bond < Fog::Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=Bond

          identity :reference

          attribute :links_up
          attribute :mode
          attribute :other_config
          attribute :properties
          attribute :uuid

          has_one  :master,          :pifs
          has_one  :primary_slave,   :pifs
          has_many :slaves,          :pifs
        end
      end
    end
  end
end