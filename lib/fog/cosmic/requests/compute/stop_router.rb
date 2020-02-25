module Fog
  module Cosmic
    class Compute

      class Real
        # Stops a router.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/stopRouter.html]
        def stop_router(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'stopRouter') 
          else
            options.merge!('command' => 'stopRouter', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

