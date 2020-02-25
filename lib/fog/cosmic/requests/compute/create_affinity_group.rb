module Fog
  module Cosmic
    class Compute

      class Real
        # Creates an affinity/anti-affinity group
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/createAffinityGroup.html]
        def create_affinity_group(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'createAffinityGroup') 
          else
            options.merge!('command' => 'createAffinityGroup', 
            'type' => args[0], 
            'name' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

