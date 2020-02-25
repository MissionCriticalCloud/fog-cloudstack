module Fog
  module Cosmic
    class Compute

      class Real
        # Adds acoount to a project
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/addAccountToProject.html]
        def add_account_to_project(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'addAccountToProject') 
          else
            options.merge!('command' => 'addAccountToProject', 
            'projectid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

