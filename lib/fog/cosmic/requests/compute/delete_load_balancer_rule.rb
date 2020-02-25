module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes a load balancer rule.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteLoadBalancerRule.html]
        def delete_load_balancer_rule(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteLoadBalancerRule') 
          else
            options.merge!('command' => 'deleteLoadBalancerRule', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

