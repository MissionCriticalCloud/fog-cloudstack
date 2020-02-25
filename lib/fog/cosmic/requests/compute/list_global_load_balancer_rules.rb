module Fog
  module Cosmic
    class Compute

      class Real
        # Lists load balancer rules.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listGlobalLoadBalancerRules.html]
        def list_global_load_balancer_rules(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listGlobalLoadBalancerRules') 
          else
            options.merge!('command' => 'listGlobalLoadBalancerRules')
          end
          request(options)
        end
      end

    end
  end
end

