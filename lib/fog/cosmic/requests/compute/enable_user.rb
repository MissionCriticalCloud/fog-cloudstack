module Fog
  module Cosmic
    class Compute

      class Real
        # Enables a user account
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/enableUser.html]
        def enable_user(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'enableUser') 
          else
            options.merge!('command' => 'enableUser', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

