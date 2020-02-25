module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes affinity group
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteAffinityGroup.html]
        def delete_affinity_group(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteAffinityGroup') 
          else
            options.merge!('command' => 'deleteAffinityGroup')
          end
          request(options)
        end
      end

    end
  end
end

