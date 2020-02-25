module Fog
  module Cosmic
    class Compute

      class Real
        # Remove an Ldap Configuration
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteLdapConfiguration.html]
        def delete_ldap_configuration(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteLdapConfiguration') 
          else
            options.merge!('command' => 'deleteLdapConfiguration', 
            'hostname' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

