module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes a load balancer HealthCheck policy.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteLBHealthCheckPolicy.html]
        def delete_lb_health_check_policy(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteLBHealthCheckPolicy') 
          else
            options.merge!('command' => 'deleteLBHealthCheckPolicy', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

