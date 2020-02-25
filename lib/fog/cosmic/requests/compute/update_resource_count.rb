module Fog
  module Cosmic
    class Compute

      class Real
        # Recalculate and update resource count for an account or domain.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateResourceCount.html]
        def update_resource_count(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateResourceCount') 
          else
            options.merge!('command' => 'updateResourceCount', 
            'domainid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

