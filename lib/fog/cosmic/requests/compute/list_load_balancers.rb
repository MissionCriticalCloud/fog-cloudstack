module Fog
  module Cosmic
    class Compute

      class Real
        # Lists Load Balancers
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listLoadBalancers.html]
        def list_load_balancers(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listLoadBalancers') 
          else
            options.merge!('command' => 'listLoadBalancers')
          end
          request(options)
        end
      end

    end
  end
end

