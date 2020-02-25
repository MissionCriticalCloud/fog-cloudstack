require 'fog/core/collection'
require 'fog/cosmic/models/compute/disk_offering'

module Fog
  module Cosmic
    class Compute
      class DiskOfferings < Fog::Collection
        model Fog::Cosmic::Compute::DiskOffering

        def all(options = {})
          response = service.list_disk_offerings(options)
          disk_offerings_data = response["listdiskofferingsresponse"]["diskoffering"] || []
          load(disk_offerings_data)
        end

        def get(disk_offering_id)
          response = service.list_disk_offerings('id' => disk_offering_id)
          disk_offering_data = response["listdiskofferingsresponse"]["diskoffering"].first
          new(disk_offering_data)
        end
      end
    end
  end
end
