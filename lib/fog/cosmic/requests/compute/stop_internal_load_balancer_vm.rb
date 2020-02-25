module Fog
  module Cosmic
    class Compute

      class Real
        # Stops an Internal LB vm.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/stopInternalLoadBalancerVM.html]
        def stop_internal_load_balancer_vm(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'stopInternalLoadBalancerVM') 
          else
            options.merge!('command' => 'stopInternalLoadBalancerVM', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

