module Fog
  module Cosmic
    class Compute

      class Real
        # Creates a global load balancer rule
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/createGlobalLoadBalancerRule.html]
        def create_global_load_balancer_rule(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'createGlobalLoadBalancerRule') 
          else
            options.merge!('command' => 'createGlobalLoadBalancerRule', 
            'gslbdomainname' => args[0], 
            'gslbservicetype' => args[1], 
            'regionid' => args[2], 
            'name' => args[3])
          end
          request(options)
        end
      end

    end
  end
end

