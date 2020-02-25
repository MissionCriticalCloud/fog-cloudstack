module Fog
  module Cosmic
    class Compute

      class Real
        # Lists all LDAP configurations
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listLdapConfigurations.html]
        def list_ldap_configurations(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listLdapConfigurations') 
          else
            options.merge!('command' => 'listLdapConfigurations')
          end
          request(options)
        end
      end

    end
  end
end

