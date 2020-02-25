module Fog
  module Cosmic
    class Compute

      class Real
        # associate a profile to a blade
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/associateUcsProfileToBlade.html]
        def associate_ucs_profile_to_blade(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'associateUcsProfileToBlade') 
          else
            options.merge!('command' => 'associateUcsProfileToBlade', 
            'profiledn' => args[0], 
            'ucsmanagerid' => args[1], 
            'bladeid' => args[2])
          end
          request(options)
        end
      end

    end
  end
end

