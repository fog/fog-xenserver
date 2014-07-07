module Fog
  module Compute
    class XenServer
      module Models
        class Tunnel < Fog::Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=tunnel

          identity :reference

          attribute :other_config
          attribute :status
          attribute :uuid

          has_one :access_pif,     :pifs,     :aliases => :access_PIF
          has_one :transport_pif,  :pifs,     :aliases => :transport_PIF
        end
      end
    end
  end
end