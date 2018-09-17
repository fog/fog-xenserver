module Fog
  module XenServer
    class Compute
      class Real
        def create_sr(config = {}, extra_params = {})
          @connection.request({ :parser => Fog::XenServer::Parsers::Base.new, :method => "SR.create" },
                              extra_params[:host_ref], extra_params[:device_config], config[:physical_size],
                              config[:name], config[:description], config[:type], config[:content_type],
                              config[:shared], config[:sm_config])
        end
      end
    end
  end
end