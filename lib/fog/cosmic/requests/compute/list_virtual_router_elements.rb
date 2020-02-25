module Fog
  module Cosmic
    class Compute

      class Real
        # Lists all available virtual router elements.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listVirtualRouterElements.html]
        def list_virtual_router_elements(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listVirtualRouterElements') 
          else
            options.merge!('command' => 'listVirtualRouterElements')
          end
          request(options)
        end
      end

    end
  end
end

