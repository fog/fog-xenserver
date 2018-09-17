module Fog
  module XenServer
    class Compute
      class Real
        def db_forget_pif(ref)
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "PIF.db_forget" }, ref)
        end
      end
    end
  end
end
