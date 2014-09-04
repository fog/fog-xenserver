module Fog
  module Compute
    class XenServer
      class Real
        # Reboot the host disabling it first unless auto_disable is
        # set to false
        #
        # This function can only be called if there are no currently running
        # VMs on the host and it is disabled. If there are running VMs, it will
        # raise an exception.
        #
        # @param [Boolean] auto_disable disable the host first
        #
        # @see http://docs.vmd.citrix.com/XenServer/6.0.0/1.0/en_gb/api/?c=host
        def reboot_host(ref)
          @connection.request({:parser => Fog::Parsers::XenServer::Base.new, :method => "host.reboot"}, ref)
        end
      end
    end
  end
end