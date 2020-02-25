module Fog
  module Cosmic
    class Compute

      class Real
        # Removes a load balancer rule association with global load balancer rule
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/removeFromGlobalLoadBalancerRule.html]
        def remove_from_global_load_balancer_rule(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'removeFromGlobalLoadBalancerRule') 
          else
            options.merge!('command' => 'removeFromGlobalLoadBalancerRule', 
            'id' => args[0], 
            'loadbalancerrulelist' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

