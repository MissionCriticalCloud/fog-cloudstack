module Fog
  module Cosmic
    class Compute

      class Real
        # Disables a user account
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/disableUser.html]
        def disable_user(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'disableUser') 
          else
            options.merge!('command' => 'disableUser', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

