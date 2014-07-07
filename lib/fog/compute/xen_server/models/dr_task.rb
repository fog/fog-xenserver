module Fog
  module Compute
    class XenServer
      module Models
        class DrTask < Fog::Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=DR_task

          identity :reference

          attribute :uuid

          has_many :introduced_srs,       :storage_repositories,     :aliases => :introduced_SRs
        end
      end
    end
  end
end