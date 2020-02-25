require 'fog/core/collection'
require 'fog/cosmic/models/compute/security_group'

module Fog
  module Cosmic
    class Compute
      class SecurityGroups < Fog::Collection
        model Fog::Cosmic::Compute::SecurityGroup

        def all(options={})
          data = service.list_security_groups(options)["listsecuritygroupsresponse"]["securitygroup"] || []
          load(data)
        end

        def get(security_group_id)
          if security_group = service.list_security_groups('id' => security_group_id)["listsecuritygroupsresponse"]["securitygroup"].first
            new(security_group)
          end
        rescue Fog::Cosmic::Compute::BadRequest
          nil
        end
      end
    end
  end
end
