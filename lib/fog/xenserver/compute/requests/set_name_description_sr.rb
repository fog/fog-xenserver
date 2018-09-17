module Fog
  module XenServer
    class Compute
      class Real
        def set_name_description_sr(ref, value)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "SR.set_name_description" }, ref, value)
        end
      end
    end
  end
end
