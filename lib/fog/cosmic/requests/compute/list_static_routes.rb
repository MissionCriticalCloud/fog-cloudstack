module Fog
  module Cosmic
    class Compute

      class Real
        # Lists all static routes
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listStaticRoutes.html]
        def list_static_routes(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listStaticRoutes') 
          else
            options.merge!('command' => 'listStaticRoutes')
          end
          request(options)
        end
      end

    end
  end
end

