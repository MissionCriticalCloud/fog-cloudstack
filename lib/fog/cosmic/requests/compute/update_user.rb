module Fog
  module Cosmic
    class Compute

      class Real
        # Updates a user account
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateUser.html]
        def update_user(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateUser') 
          else
            options.merge!('command' => 'updateUser', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

