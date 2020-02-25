module Fog
  module Cosmic
    class Compute

      class Real
        # Lists project's accounts
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listProjectAccounts.html]
        def list_project_accounts(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listProjectAccounts') 
          else
            options.merge!('command' => 'listProjectAccounts', 
            'projectid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

