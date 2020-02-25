module Fog
  module Cosmic
    class Compute

      class Real
        # lists network that are using a netscaler load balancer device
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listNetscalerLoadBalancerNetworks.html]
        def list_netscaler_load_balancer_networks(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listNetscalerLoadBalancerNetworks') 
          else
            options.merge!('command' => 'listNetscalerLoadBalancerNetworks', 
            'lbdeviceid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

