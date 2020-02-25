module Fog
  module Cosmic
    class Compute

      class Real
        # configures a netscaler load balancer device
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/configureNetscalerLoadBalancer.html]
        def configure_netscaler_load_balancer(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'configureNetscalerLoadBalancer') 
          else
            options.merge!('command' => 'configureNetscalerLoadBalancer', 
            'lbdeviceid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

