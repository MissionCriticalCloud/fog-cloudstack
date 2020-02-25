module Fog
  module Cosmic
    class Compute

      class Real
        # Lists network serviceproviders for a given physical network.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/listNetworkServiceProviders.html]
        def list_network_service_providers(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'listNetworkServiceProviders') 
          else
            options.merge!('command' => 'listNetworkServiceProviders')
          end
          request(options)
        end
      end

    end
  end
end

