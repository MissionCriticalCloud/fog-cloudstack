module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes network device.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteNetworkDevice.html]
        def delete_network_device(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteNetworkDevice') 
          else
            options.merge!('command' => 'deleteNetworkDevice', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

