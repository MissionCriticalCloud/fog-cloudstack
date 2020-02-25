require 'fog/core/collection'
require 'fog/cosmic/models/compute/flavor'

module Fog
  module Cosmic
    class Compute
      class Flavors < Fog::Collection
        model Fog::Cosmic::Compute::Flavor

        def all
          data = service.list_service_offerings["listserviceofferingsresponse"]["serviceoffering"] || []
          load(data)
        end

        def get(flavor_id)
          if flavor = service.list_service_offerings('id' => flavor_id)["listserviceofferingsresponse"]["serviceoffering"].first
            new(flavor)
          end
        rescue Fog::Cosmic::Compute::BadRequest
          nil
        end
      end
    end
  end
end
