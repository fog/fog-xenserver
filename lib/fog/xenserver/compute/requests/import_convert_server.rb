module Fog
  module XenServer
    class Compute
      class Real
        def import_convert_server(type, username, password, sr, remote_config)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.import_convert" }, type, username, password, sr, remote_config)
        end

        alias_method :import_convert_vm, :import_convert_server
      end
    end
  end
end
