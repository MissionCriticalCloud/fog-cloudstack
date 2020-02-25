module Fog
  module Cosmic
    class Compute

      class Real
        # List external firewall appliances.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listExternalFirewalls.html]
        def list_external_firewalls(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listExternalFirewalls') 
          else
            options.merge!('command' => 'listExternalFirewalls', 
            'zoneid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

