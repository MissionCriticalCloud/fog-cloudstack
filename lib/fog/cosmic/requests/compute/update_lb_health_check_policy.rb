module Fog
  module Cosmic
    class Compute

      class Real
        # Updates LB HealthCheck policy
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateLBHealthCheckPolicy.html]
        def update_lb_health_check_policy(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateLBHealthCheckPolicy') 
          else
            options.merge!('command' => 'updateLBHealthCheckPolicy', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

