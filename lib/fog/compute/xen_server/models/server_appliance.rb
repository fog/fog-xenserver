module Fog
  module Compute
    class XenServer
      module Models
        class ServerAppliance < Fog::Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=VM_appliance

          provider_class :VM_appliance

          identity :reference

          attribute :allowed_operations
          attribute :current_operations
          attribute :description,             :aliases => :name_description
          attribute :name,                    :aliases => :name_label
          attribute :uuid

          has_many  :vms,   :servers,         :aliases => :VMs
        end
      end
    end
  end
end