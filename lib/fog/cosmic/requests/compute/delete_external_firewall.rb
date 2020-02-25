module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes an external firewall appliance.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteExternalFirewall.html]
        def delete_external_firewall(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteExternalFirewall') 
          else
            options.merge!('command' => 'deleteExternalFirewall', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

