module Fog
  module XenServer
    class HostIsSlave < Fog::Errors::Error
      attr_accessor :master
      def initialize(master)
        super
        @master = master
      end
    end
  end
end
