require 'fog/core/model'

module Fog
  module Compute
    class XenServer
      module Models
        class Pbd < Fog::Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=PBD

          identity :reference

          attribute :currently_attached
          attribute :device_config
          attribute :__host,             :aliases => :host
          attribute :other_config
          attribute :__sr,               :aliases => :SR
          attribute :uuid

          def sr
            service.storage_repositories.get __sr
          end

          def storage_repository
            sr
          end

          def host
            service.hosts.get __host
          end

          def unplug
            service.unplug_pbd reference
          end
        end
      end
    end
  end
end