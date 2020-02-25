module Fog
  module Cosmic
    class Compute

      class Real
        #  delete a netscaler load balancer device
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteNetscalerLoadBalancer.html]
        def delete_netscaler_load_balancer(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteNetscalerLoadBalancer') 
          else
            options.merge!('command' => 'deleteNetscalerLoadBalancer', 
            'lbdeviceid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

