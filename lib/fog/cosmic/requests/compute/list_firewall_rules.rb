module Fog
  module Cosmic
    class Compute

      class Real
        # Lists all firewall rules for an IP address.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listFirewallRules.html]
        def list_firewall_rules(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listFirewallRules')
          else
            options.merge!('command' => 'listFirewallRules')
          end

          # add project id if we have one
          @cosmic_project_id ? options.merge!('projectid' => @cosmic_project_id) : nil

          request(options)
        end
      end

      class Mock
        def list_firewall_rules(*arg)
          firewall_rules = self.data[:firewall_rules]
          { "listfirewallrulesresponse" => { "count"=> firewall_rules.count, "firewallrule"=> firewall_rules.values } }
        end
      end

    end
  end
end

