module Fog
  module Cosmic
    class Compute

      class Real
        # Updates resource limits for an account or domain.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateResourceLimit.html]
        def update_resource_limit(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateResourceLimit') 
          else
            options.merge!('command' => 'updateResourceLimit', 
            'resourcetype' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

