module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes a Network Service Provider.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteNetworkServiceProvider.html]
        def delete_network_service_provider(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteNetworkServiceProvider') 
          else
            options.merge!('command' => 'deleteNetworkServiceProvider', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

