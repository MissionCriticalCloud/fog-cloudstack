module Fog
  module Cosmic
    class Compute

      class Real
        # Lists all network services provided by Cosmic or for the given provider.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listSupportedNetworkServices.html]
        def list_supported_network_services(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listSupportedNetworkServices') 
          else
            options.merge!('command' => 'listSupportedNetworkServices')
          end
          request(options)
        end
      end

    end
  end
end

