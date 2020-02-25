module Fog
  module Cosmic
    class Compute

      class Real
        # Destroys a router.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/destroyRouter.html]
        def destroy_router(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'destroyRouter') 
          else
            options.merge!('command' => 'destroyRouter', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

