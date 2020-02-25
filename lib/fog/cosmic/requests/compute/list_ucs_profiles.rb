module Fog
  module Cosmic
    class Compute

      class Real
        # List profile in ucs manager
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listUcsProfiles.html]
        def list_ucs_profiles(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listUcsProfiles') 
          else
            options.merge!('command' => 'listUcsProfiles', 
            'ucsmanagerid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

