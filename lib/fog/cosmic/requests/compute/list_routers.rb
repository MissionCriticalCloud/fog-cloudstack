module Fog
  module Cosmic
    class Compute

      class Real
        # List routers.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listRouters.html]
        def list_routers(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listRouters') 
          else
            options.merge!('command' => 'listRouters')
          end
          request(options)
        end
      end

    end
  end
end

