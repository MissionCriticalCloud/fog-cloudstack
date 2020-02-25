module Fog
  module Cosmic
    class Compute

      class Real
        # update global load balancer rules.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateGlobalLoadBalancerRule.html]
        def update_global_load_balancer_rule(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateGlobalLoadBalancerRule') 
          else
            options.merge!('command' => 'updateGlobalLoadBalancerRule', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

