module Fog
  module Cosmic
    class Compute

      class Real
        # Configures a virtual router element.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/configureVirtualRouterElement.html]
        def configure_virtual_router_element(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'configureVirtualRouterElement') 
          else
            options.merge!('command' => 'configureVirtualRouterElement', 
            'id' => args[0], 
            'enabled' => args[1])
          end
          request(options)
        end
      end

    end
  end
end

