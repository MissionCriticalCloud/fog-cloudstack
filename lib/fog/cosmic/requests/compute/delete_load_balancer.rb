module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes a load balancer
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteLoadBalancer.html]
        def delete_load_balancer(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteLoadBalancer') 
          else
            options.merge!('command' => 'deleteLoadBalancer', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

