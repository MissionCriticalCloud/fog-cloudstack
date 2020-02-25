module Fog
  module Cosmic
    class Compute

      class Real
        # Creates an account from an LDAP user
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/ldapCreateAccount.html]
        def ldap_create_account(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'ldapCreateAccount') 
          else
            options.merge!('command' => 'ldapCreateAccount', 
            'username' => args[0], 
            'accounttype' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

