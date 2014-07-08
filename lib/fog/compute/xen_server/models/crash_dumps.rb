module Fog
  module Compute
    class XenServer
      module Models
        class CrashDumps < Fog::Collection
          model Fog::Compute::XenServer::Models::CrashDump
        end
      end
    end
  end
end