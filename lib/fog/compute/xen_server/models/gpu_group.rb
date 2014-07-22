module Fog
  module Compute
    class XenServer
      module Models
        class GpuGroup < Fog::Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=GPU_group

          provider_class :GPU_group
          collection_name :gpu_groups

          identity :reference

          attribute :description,         :aliases => :name_description
          attribute :gpu_types,           :aliases => :GPU_types
          attribute :name,                :aliases => :name_label
          attribute :other_config
          attribute :uuid

          has_many :pgpus,    :pgpus,     :aliases => :PGPUs
          has_many :vgpus,    :vgpus,     :aliases => :VGPUs
        end
      end
    end
  end
end