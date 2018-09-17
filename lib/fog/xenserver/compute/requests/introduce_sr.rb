module Fog
  module XenServer
    class Compute
      class Real
        def introduce_sr(uuid, name_label, name_description, typecontent, sahred, sm_config)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "SR.introduce" }, uuid, name_label, name_description, typecontent, sahred, sm_config)
        end
      end
    end
  end
end
