module Fog
  module Cosmic
    class Compute

      class Real
        # Lists all LDAP Users
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listLdapUsers.html]
        def list_ldap_users(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listLdapUsers') 
          else
            options.merge!('command' => 'listLdapUsers')
          end
          request(options)
        end
      end

    end
  end
end

