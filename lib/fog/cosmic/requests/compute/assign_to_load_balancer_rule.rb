module Fog
  module Cosmic
    class Compute

      class Real
        # Assigns virtual machine or a list of virtual machines to a load balancer rule.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/assignToLoadBalancerRule.html]
        def assign_to_load_balancer_rule(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'assignToLoadBalancerRule') 
          else
            options.merge!('command' => 'assignToLoadBalancerRule', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

