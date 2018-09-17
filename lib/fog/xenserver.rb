require "fog/core"
require "fog/xml"

module Fog
  module XenServer
    autoload :Compute, File.expand_path("../xenserver/compute", __FILE__)
    autoload :Connection, File.expand_path("../xenserver/connection", __FILE__)
    autoload :InvalidLogin, File.expand_path("../xenserver/invalid_login", __FILE__)
    autoload :NokogiriStreamParser, File.expand_path("../xenserver/nokogiri_stream_parser", __FILE__)
    autoload :NotFound, File.expand_path("../xenserver/not_found", __FILE__)
    autoload :Parsers, File.expand_path("../xenserver/parsers", __FILE__)
    autoload :RequestFailed, File.expand_path("../xenserver/request_failed", __FILE__)

    extend Fog::Provider

    service(:compute, "Compute")
  end
end
