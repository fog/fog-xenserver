require 'fog/core'
require 'fog/xml'
require 'fog/utilities'
require 'fog/model'

module Fog
  module XenServer
    autoload :Connection, 'fog/xen_server/connection'
    autoload :InvalidLogin, 'fog/xen_server/invalid_login'
    autoload :NokogiriStreamParser, 'fog/xen_server/nokogiri_stream_parser'
    autoload :NotFound, 'fog/xen_server/not_found'
    autoload :RequestFailed, 'fog/xen_server/request_failed'

    extend Fog::Provider

    service(:compute, 'Compute')
  end

  module Compute
    autoload :XenServer, 'fog/compute/xen_server'
  end

  module Parsers
    autoload :XenServer, 'fog/parsers/xen_server'
  end
end