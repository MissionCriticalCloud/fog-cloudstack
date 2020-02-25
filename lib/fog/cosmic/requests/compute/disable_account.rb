module Fog
  module Cosmic
    class Compute

      class Real
        # Disables an account
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/disableAccount.html]
        def disable_account(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'disableAccount') 
          else
            options.merge!('command' => 'disableAccount', 
            'lock' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

