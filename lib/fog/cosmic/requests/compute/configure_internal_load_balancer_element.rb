module Fog
  module Cosmic
    class Compute

      class Real
        # Configures an Internal Load Balancer element.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/configureInternalLoadBalancerElement.html]
        def configure_internal_load_balancer_element(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'configureInternalLoadBalancerElement') 
          else
            options.merge!('command' => 'configureInternalLoadBalancerElement', 
            'id' => args[0], 
            'enabled' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

