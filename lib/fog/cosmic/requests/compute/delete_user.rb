module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes a user for an account
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteUser.html]
        def delete_user(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteUser') 
          else
            options.merge!('command' => 'deleteUser', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

