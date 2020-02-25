module Fog
  module Cosmic
    class Compute

      class Real
        # Lists F5 external load balancer appliances added in a zone.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listExternalLoadBalancers.html]
        def list_external_load_balancers(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listExternalLoadBalancers') 
          else
            options.merge!('command' => 'listExternalLoadBalancers')
          end
          request(options)
        end
      end

    end
  end
end

