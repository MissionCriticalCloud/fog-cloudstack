module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes account from the project
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteAccountFromProject.html]
        def delete_account_from_project(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteAccountFromProject') 
          else
            options.merge!('command' => 'deleteAccountFromProject', 
            'projectid' => args[0], 
            'account' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

