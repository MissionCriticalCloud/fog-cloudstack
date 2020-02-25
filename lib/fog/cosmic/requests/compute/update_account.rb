module Fog
  module Cosmic
    class Compute

      class Real
        # Updates account information for the authenticated user
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateAccount.html]
        def update_account(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateAccount') 
          else
            options.merge!('command' => 'updateAccount', 
            'newname' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

