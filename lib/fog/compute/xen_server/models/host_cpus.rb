require 'fog/core/collection'

module Fog
  module Compute
    class XenServer
      module Models
        class HostCpus < Fog::Collection
          model Fog::Compute::XenServer::Models::HostCpu

          def all(options={})
            data = service.get_records 'host_cpu'
            load(data)
          end

          def get( host_cpu_ref )
            if host_cpu_ref && host_cpu = service.get_record( host_cpu_ref, 'host_cpu' )
              new(host_cpu)
            else
              nil
            end
          end
        end
      end
    end
  end
end