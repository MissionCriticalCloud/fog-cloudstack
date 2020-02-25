module Fog
  module Cosmic
    class Compute

      class Real
        # Starts a router.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/rebootRouter.html]
        def reboot_router(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'rebootRouter') 
          else
            options.merge!('command' => 'rebootRouter', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

