module Fog
  module Cosmic
    class Compute

      class Real
        # Deletes a storage network IP Range.
        #
        # {Cosmic API Reference}[https://apidoc.mcc.schubergphilis.com/root_admin/deleteStorageNetworkIpRange.html]
        def delete_storage_network_ip_range(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'deleteStorageNetworkIpRange') 
          else
            options.merge!('command' => 'deleteStorageNetworkIpRange', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

