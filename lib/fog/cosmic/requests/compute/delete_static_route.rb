module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes a static route
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteStaticRoute.html]
        def delete_static_route(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteStaticRoute') 
          else
            options.merge!('command' => 'deleteStaticRoute', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

