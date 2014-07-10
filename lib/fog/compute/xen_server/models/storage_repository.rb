module Fog
  module Compute
    class XenServer
      module Models
        class StorageRepository < Fog::Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=SR

          provider_class :SR

          identity :reference

          attribute :allowed_operations
          attribute :blobs
          attribute :content_type
          attribute :current_operations
          attribute :description,          :aliases => :name_description
          attribute :introduced_by
          attribute :local_cache_enabled
          attribute :name,                 :aliases => :name_label
          attribute :other_config
          attribute :physical_size
          attribute :physical_utilisation
          attribute :shared
          attribute :sm_config
          attribute :tags
          attribute :type
          attribute :uuid
          attribute :virtual_allocation

          has_many  :pbds,  :pbds,         :aliases => :PBDs
          has_many  :vdis,  :vdis,         :aliases => :VDIs

          def save
            requires :name
            requires :type

            # host is not a model attribute (not in XAPI at least),
            # but we need it here
            host = attributes[:host]
            raise ArgumentError.new('host is required for this operation') unless
                host

            # Not sure if this is always required, so not raising exception if nil
            device_config = attributes[:device_config]

            # create_sr request provides sane defaults if some attributes are
            # missing
            attr = service.get_record(
                service.create_sr( host.reference,
                                   name,
                                   type,
                                   description || '',
                                   device_config || {},
                                   physical_size || '0',
                                   content_type || 'user',
                                   shared || false,
                                   sm_config || {}),
                'SR'
            )
            merge_attributes attr
            true
          end
        end
      end
    end
  end
end