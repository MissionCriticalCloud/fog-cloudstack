module Fog
  module Cosmic
    class Compute

      class Real
        # Updates firewall rule 
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateFirewallRule.html]
        def update_firewall_rule(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateFirewallRule') 
          else
            options.merge!('command' => 'updateFirewallRule', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

