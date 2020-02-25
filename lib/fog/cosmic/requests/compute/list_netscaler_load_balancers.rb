module Fog
  module Cosmic
    class Compute

      class Real
        # lists netscaler load balancer devices
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listNetscalerLoadBalancers.html]
        def list_netscaler_load_balancers(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listNetscalerLoadBalancers') 
          else
            options.merge!('command' => 'listNetscalerLoadBalancers')
          end
          request(options)
        end
      end

    end
  end
end

