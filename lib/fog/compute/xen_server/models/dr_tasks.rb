require 'fog/core/collection'

module Fog
  module Compute
    class XenServer
      module Models
        class DrTasks < Fog::Collection
          model Fog::Compute::XenServer::Models::DrTask

          def all(options = {})
            data = service.get_records 'DR_task'
            load(data)
          end

          def get(dr_task_ref)
            if dr_task_ref && dr_task = service.get_record( dr_task_ref, 'DR_task' )
              new(dr_task)
            else
              nil
            end
          end
        end
      end
    end
  end
end