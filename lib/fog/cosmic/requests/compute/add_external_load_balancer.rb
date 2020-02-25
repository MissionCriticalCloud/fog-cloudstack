module Fog
  module Cosmic
    class Compute

      class Real
        # Adds F5 external load balancer appliance.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/addExternalLoadBalancer.html]
        def add_external_load_balancer(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'addExternalLoadBalancer') 
          else
            options.merge!('command' => 'addExternalLoadBalancer', 
            'zoneid' => args[0], 
            'url' => args[1], 
            'password' => args[2], 
            'username' => args[3])
          end
          request(options)
        end
      end

    end
  end
end

