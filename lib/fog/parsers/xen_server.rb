module Fog
  module Parsers
    module XenServer
      autoload :Base, 'fog/parsers/xen_server/base'
      autoload :GetHosts, 'fog/parsers/xen_server/get_hosts'
      autoload :GetNetworks, 'fog/parsers/xen_server/get_networks'
      autoload :GetPools, 'fog/parsers/xen_server/get_pools'
      autoload :GetRecords, 'fog/parsers/xen_server/get_records'
      autoload :GetStorageRepositories, 'fog/parsers/xen_server/get_storage_repositories'
      autoload :GetVbds, 'fog/parsers/xen_server/get_vbds'
      autoload :GetVifs, 'fog/parsers/xen_server/get_vifs'
      autoload :GetVms, 'fog/parsers/xen_server/get_vms'
    end
  end
end