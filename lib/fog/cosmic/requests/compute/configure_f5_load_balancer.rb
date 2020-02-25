module Fog
  module Cosmic
    class Compute

      class Real
        # configures a F5 load balancer device
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/configureF5LoadBalancer.html]
        def configure_f5_load_balancer(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'configureF5LoadBalancer') 
          else
            options.merge!('command' => 'configureF5LoadBalancer', 
            'lbdeviceid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

