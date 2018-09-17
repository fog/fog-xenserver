module Fog
  module XenServer
    class Compute
      class Real
        def record_data_source_server(ref, data_source)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "VM.record_data_source" }, ref, data_source)
        end

        alias_method :record_data_source_vm, :record_data_source_server
      end
    end
  end
end
