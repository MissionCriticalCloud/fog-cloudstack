module Fog
  module Cosmic
    class Compute

      class Real
        # Lists affinity groups
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listAffinityGroups.html]
        def list_affinity_groups(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listAffinityGroups') 
          else
            options.merge!('command' => 'listAffinityGroups')
          end
          request(options)
        end
      end

    end
  end
end

