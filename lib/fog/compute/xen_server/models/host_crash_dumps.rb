module Fog
  module Compute
    class XenServer
      module Models
        class HostCrashDumps < Fog::Collection
          model Fog::Compute::XenServer::Models::HostCrashDump
        end
      end
    end
  end
end