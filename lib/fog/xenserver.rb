require 'fog/core'
require 'fog/xml'
require "#{File.join(File.dirname(__FILE__), 'compute')}"
require "#{File.join(File.dirname(__FILE__), 'parsers')}"

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
end