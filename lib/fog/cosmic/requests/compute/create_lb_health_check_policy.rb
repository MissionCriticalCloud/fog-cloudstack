module Fog
  module Cosmic
    class Compute

      class Real
        # Creates a Load Balancer healthcheck policy 
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/createLBHealthCheckPolicy.html]
        def create_lb_health_check_policy(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'createLBHealthCheckPolicy') 
          else
            options.merge!('command' => 'createLBHealthCheckPolicy', 
            'lbruleid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

