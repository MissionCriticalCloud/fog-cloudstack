module Fog
  module Cosmic
    class Compute

      class Real
        # Updates a Load Balancer
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateLoadBalancer.html]
        def update_load_balancer(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateLoadBalancer') 
          else
            options.merge!('command' => 'updateLoadBalancer', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

