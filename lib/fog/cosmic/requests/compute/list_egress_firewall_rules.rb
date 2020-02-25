module Fog
  module Cosmic
    class Compute

      class Real
        # Lists all egress firewall rules for network id.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listEgressFirewallRules.html]
        def list_egress_firewall_rules(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listEgressFirewallRules')
          else
            options.merge!('command' => 'listEgressFirewallRules')
          end

          # add project id if we have one
          @cosmic_project_id ? options.merge!('projectid' => @cosmic_project_id) : nil

          request(options)
        end
      end

      class Mock
        def list_egress_firewall_rules(*arg)
          firewall_rules = self.data[:egress_firewall_rules]
          { "listegressfirewallrulesresponse" => { "count"=> firewall_rules.count, "firewallrule"=> firewall_rules.values } }
        end
      end

    end
  end
end

