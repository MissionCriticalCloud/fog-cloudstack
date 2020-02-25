module Fog
  module Cosmic
    class Compute

      class Real
        # Locks a user account
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/lockUser.html]
        def lock_user(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'lockUser') 
          else
            options.merge!('command' => 'lockUser', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

