module Fog
  module Cosmic
    class Compute

      class Real
        # Import LDAP users
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/importLdapUsers.html]
        def import_ldap_users(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'importLdapUsers') 
          else
            options.merge!('command' => 'importLdapUsers', 
            'accounttype' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

