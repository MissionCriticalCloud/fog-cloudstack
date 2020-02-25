module Fog
  module Cosmic
    class Compute

      class Real
        # Lists load balancer HealthCheck policies.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listLBHealthCheckPolicies.html]
        def list_lb_health_check_policies(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listLBHealthCheckPolicies') 
          else
            options.merge!('command' => 'listLBHealthCheckPolicies')
          end
          request(options)
        end
      end

    end
  end
end

