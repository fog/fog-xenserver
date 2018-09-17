module Fog
  module XenServer
    class Compute
      class Real
        def set_attribute(klass, ref, attr_name, *value)
          @connection.request({:parser => Fog::XenServer::Parsers::Base.new, :method => "#{klass}.set_#{attr_name.gsub("-","_")}"}, ref, *value)
        end
      end
    end
  end
end