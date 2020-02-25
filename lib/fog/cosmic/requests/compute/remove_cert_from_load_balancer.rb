module Fog
  module Cosmic
    class Compute

      class Real
        # Removes a certificate from a Load Balancer Rule
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/removeCertFromLoadBalancer.html]
        def remove_cert_from_load_balancer(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'removeCertFromLoadBalancer') 
          else
            options.merge!('command' => 'removeCertFromLoadBalancer', 
            'lbruleid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

