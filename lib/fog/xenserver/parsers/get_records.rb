module Fog
  module XenServer
    module Parsers
      class GetRecords < Fog::XenServer::Parsers::Base
        def reset
          @response = []
        end

        def parse( data )
          parser = Fog::XenServer::Parsers::Base.new
          data.each_pair {|reference, hash| @response << parser.parse( hash ).merge(:reference => reference) }
        end
      end
    end
  end
end
