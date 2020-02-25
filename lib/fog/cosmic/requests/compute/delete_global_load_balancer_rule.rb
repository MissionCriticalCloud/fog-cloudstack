module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes a global load balancer rule.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteGlobalLoadBalancerRule.html]
        def delete_global_load_balancer_rule(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteGlobalLoadBalancerRule') 
          else
            options.merge!('command' => 'deleteGlobalLoadBalancerRule', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

