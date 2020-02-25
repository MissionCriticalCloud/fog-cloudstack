module Fog
  module Cosmic
    class Compute

      class Real
        # Lists affinity group types available
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listAffinityGroupTypes.html]
        def list_affinity_group_types(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listAffinityGroupTypes') 
          else
            options.merge!('command' => 'listAffinityGroupTypes')
          end
          request(options)
        end
      end

    end
  end
end

