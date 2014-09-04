module Fog
  module Compute
    class XenServer
      class Real
        def create_vdi(config = {}, extra_params = {})
          raise ArgumentError.new('Missing type attribute') if config[:type].nil?
          raise ArgumentError.new('Missing storage_repository attribute') if config[:SR].nil?
          @connection.request({:parser => Fog::Parsers::XenServer::Base.new, :method => 'VDI.create'}, config)
        end
      end
    end
  end
end