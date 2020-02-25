module Fog
  module Cosmic
    class Compute

      class Real
        # Updates a network offering.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/updateNetworkOffering.html]
        def update_network_offering(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'updateNetworkOffering') 
          else
            options.merge!('command' => 'updateNetworkOffering')
          end
          request(options)
        end
      end

    end
  end
end

