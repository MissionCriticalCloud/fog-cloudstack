module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes a F5 external load balancer appliance added in a zone.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteExternalLoadBalancer.html]
        def delete_external_load_balancer(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteExternalLoadBalancer') 
          else
            options.merge!('command' => 'deleteExternalLoadBalancer', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

