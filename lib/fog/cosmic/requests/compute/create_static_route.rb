module Fog
  module Cosmic
    class Compute

      class Real
        # Creates a static route
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/createStaticRoute.html]
        def create_static_route(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'createStaticRoute') 
          else
            options.merge!('command' => 'createStaticRoute', 
            'gatewayid' => args[0], 
            'cidr' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

