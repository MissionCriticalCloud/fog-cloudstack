require 'fog/core/collection'
require 'fog/cosmic/models/compute/public_ip_address'

module Fog
  module Cosmic
    class Compute
      class PublicIpAddresses < Fog::Collection
        model Fog::Cosmic::Compute::PublicIpAddress

        def all(options = {})
          response = service.list_public_ip_addresses(options)
          public_ip_addresses = response["listpublicipaddressesresponse"]["publicipaddress"] || []
          load(public_ip_addresses)
        end

        def get(address_id)
          response = service.list_public_ip_addresses('id' => address_id)
          if public_ip_address = response["listpublicipaddressesresponse"]["publicipaddress"].first
            new(public_ip_address)
          end
        rescue Fog::Cosmic::Compute::BadRequest
          nil
        end
      end
    end
  end
end
