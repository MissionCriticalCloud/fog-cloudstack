module Fog
  module Cosmic
    class Compute

      class Real
        # Assign load balancer rule or list of load balancer rules to a global load balancer rules.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/assignToGlobalLoadBalancerRule.html]
        def assign_to_global_load_balancer_rule(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'assignToGlobalLoadBalancerRule') 
          else
            options.merge!('command' => 'assignToGlobalLoadBalancerRule', 
            'id' => args[0], 
            'loadbalancerrulelist' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

