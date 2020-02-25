module Fog
  module Cosmic
    class Compute

      class Real
        # Add a new Ldap Configuration
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/addLdapConfiguration.html]
        def add_ldap_configuration(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'addLdapConfiguration') 
          else
            options.merge!('command' => 'addLdapConfiguration', 
            'port' => args[0], 
            'hostname' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

