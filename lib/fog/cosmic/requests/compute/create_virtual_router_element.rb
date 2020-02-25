module Fog
  module Cosmic
    class Compute

      class Real
        # Create a virtual router element.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/createVirtualRouterElement.html]
        def create_virtual_router_element(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'createVirtualRouterElement') 
          else
            options.merge!('command' => 'createVirtualRouterElement', 
            'nspid' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

