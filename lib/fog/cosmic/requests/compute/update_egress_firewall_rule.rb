module Fog
  module Cosmic
    class Compute

      class Real
        # Updates egress firewall rule 
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateEgressFirewallRule.html]
        def update_egress_firewall_rule(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateEgressFirewallRule') 
          else
            options.merge!('command' => 'updateEgressFirewallRule', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

