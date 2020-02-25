module Fog
  module Cosmic
    class Compute

      class Real
        # Updates load balancer
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateLoadBalancerRule.html]
        def update_load_balancer_rule(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateLoadBalancerRule') 
          else
            options.merge!('command' => 'updateLoadBalancerRule', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

