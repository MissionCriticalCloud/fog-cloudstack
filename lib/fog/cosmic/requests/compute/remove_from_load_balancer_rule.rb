module Fog
  module Cosmic
    class Compute

      class Real
        # Removes a virtual machine or a list of virtual machines from a load balancer rule.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/removeFromLoadBalancerRule.html]
        def remove_from_load_balancer_rule(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'removeFromLoadBalancerRule') 
          else
            options.merge!('command' => 'removeFromLoadBalancerRule', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

