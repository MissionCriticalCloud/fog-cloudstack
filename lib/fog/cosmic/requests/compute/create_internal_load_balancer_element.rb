module Fog
  module Cosmic
    class Compute

      class Real
        # Create an Internal Load Balancer element.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/createInternalLoadBalancerElement.html]
        def create_internal_load_balancer_element(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'createInternalLoadBalancerElement') 
          else
            options.merge!('command' => 'createInternalLoadBalancerElement', 
            'nspid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

