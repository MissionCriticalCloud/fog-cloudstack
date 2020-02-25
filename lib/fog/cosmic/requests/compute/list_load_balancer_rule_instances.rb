module Fog
  module Cosmic
    class Compute

      class Real
        # List all virtual machine instances that are assigned to a load balancer rule.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listLoadBalancerRuleInstances.html]
        def list_load_balancer_rule_instances(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listLoadBalancerRuleInstances') 
          else
            options.merge!('command' => 'listLoadBalancerRuleInstances', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

