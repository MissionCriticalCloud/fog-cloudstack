module Fog
  module Cosmic
    class Compute

      class Real
        # Starts an existing internal lb vm.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/startInternalLoadBalancerVM.html]
        def start_internal_load_balancer_vm(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'startInternalLoadBalancerVM') 
          else
            options.merge!('command' => 'startInternalLoadBalancerVM', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

